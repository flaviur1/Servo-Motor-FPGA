#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xadcps.h"
#include "xgpio.h"
#include <unistd.h>

// Definim constantele pentru servo
#define ANGLE_MIN 0      // Unghi minim (0 grade)
#define ANGLE_MAX 180    // Unghi maxim (180 grade)
#define ANGLE_STEP 5     // Pas pentru modul buton

// Definim adresele de bază pentru GPIO-uri din xparameters.h
#define GPIO_ANGLE_BASEADDR        XPAR_AXI_GPIO_ANGLE_BASEADDR
#define GPIO_SW_BTN_BASEADDR      XPAR_AXI_GPIO_SW_BTN_OUT_BASEADDR
#define XADC_DEVICE_ID            XPAR_XADC_WIZ_0_DEVICE_ID

#define XADCPS_SEQ_CH_VAUX14 (1 << 30)

static XAdcPs xadc;
XGpio gpio_angle, gpio_sw_btn;
int current_angle = 90; // Poziție inițială (centru)

int main(void) {
    init_platform();
    
    // Inițializare XADC
    XAdcPs_Config *xadc_cfg = XAdcPs_LookupConfig(0); // Device ID este întotdeauna 0 pentru XADC
    if (xadc_cfg == NULL) {
        xil_printf("Error: XADC config failed\r\n");
        return XST_FAILURE;
    }
    
    if (XAdcPs_CfgInitialize(&xadc, xadc_cfg, xadc_cfg->BaseAddress) != XST_SUCCESS) {
        xil_printf("Error: XADC initialization failed\r\n");
        return XST_FAILURE;
    }
    
    XAdcPs_SetSequencerMode(&xadc, XADCPS_SEQ_MODE_CONTINPASS);
    XAdcPs_SetSeqChEnables(&xadc, XADCPS_SEQ_CH_VAUX14);

    // Inițializare GPIO-uri folosind adresele de bază
    XGpio_Initialize(&gpio_angle, GPIO_ANGLE_BASEADDR);
    XGpio_Initialize(&gpio_sw_btn, GPIO_SW_BTN_BASEADDR);
    
    // Setare direcții GPIO
    XGpio_SetDataDirection(&gpio_angle, 1, 0x00000000);  // Output pentru servo
    XGpio_SetDataDirection(&gpio_sw_btn, 1, 0xFFFFFFFF); // Input pentru switch și butoane
    XGpio_SetDataDirection(&gpio_sw_btn, 2, 0xFFFFFFFF); // Input pentru al doilea canal (butoane)
    
    xil_printf("Initialization complete. Starting main loop...\r\n");
    
    while (1) {
        // Citim starea switch-ului (primul canal)
        int switch_state = (XGpio_DiscreteRead(&gpio_sw_btn, 1) & 0x1);
        
        if (switch_state) {
            // Mod potențiometru
            u32 raw_value = XAdcPs_GetAdcData(&xadc, 30); // VAUX14
            u32 pot_value = raw_value >> 4; // Convertim la 12 biți
            // Mapăm valoarea potențiometrului (0-4095) la unghiul servo-ului (0-180)
            current_angle = (pot_value * 180) / 4095;
            xil_printf("Potentiometer mode - Raw: %lu, Angle: %d\r\n", pot_value, current_angle);
        } else {
            // Mod butoane (al doilea canal)
            int buttons = (XGpio_DiscreteRead(&gpio_sw_btn, 2) & 0x3);
            
            if (buttons & 0x1) { // BTN0 - stânga
                if (current_angle > ANGLE_MIN) {
                    current_angle -= ANGLE_STEP;
                    xil_printf("Button Left - Angle: %d\r\n", current_angle);
                }
            }
            if (buttons & 0x2) { // BTN1 - dreapta
                if (current_angle < ANGLE_MAX) {
                    current_angle += ANGLE_STEP;
                    xil_printf("Button Right - Angle: %d\r\n", current_angle);
                }
            }
        }
        
        // Verificăm limitele
        if (current_angle < ANGLE_MIN) current_angle = ANGLE_MIN;
        if (current_angle > ANGLE_MAX) current_angle = ANGLE_MAX;
        
        // Actualizare poziție servo
        XGpio_DiscreteWrite(&gpio_angle, 1, (u8)current_angle);
        
        // Mică întârziere pentru a evita supraîncărcarea sistemului
        usleep(10000);
    }
    
    cleanup_platform();
    return 0;
}