library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity servoSignal is
    Port(clk : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         angle : in  integer range 0 to 180;
         pwm : out STD_LOGIC);
end servoSignal;

architecture Behavioral of servoSignal is

signal aux_pwn : integer := 0;
signal counter : integer range 0 to 130000 := 0;
    
begin

    process (clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            pwm <= '0';
        elsif rising_edge(clk) then
            aux_pwn <= 20000 + ( angle / 180 * 110000 );
            if counter < aux_pwn then
                pwm <= '1'; 
            else
                pwm <= '0';
            end if;

            if counter >= 130000 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
            
        end if;
    end process;
    
end Behavioral;
