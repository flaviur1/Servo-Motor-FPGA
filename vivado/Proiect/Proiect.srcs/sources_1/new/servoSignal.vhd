library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity servoSignal is
    Port(clk : in  STD_LOGIC; -- here we receive the clk from the servoSignal, but we have to implement a port map in another entity
         reset : in  STD_LOGIC;
         angle : in  integer range 0 to 180; -- the angle to which we want to move our motor
         pwm : out STD_LOGIC);
end servoSignal;

architecture Behavioral of servoSignal is

signal pulse_width : integer := 0;
signal counter : integer range 0 to 130000 := 0;
    
begin

    process (clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            pwm <= '0';
        elsif rising_edge(clk) then
            -- this formula assures us we have a valid value between 20 000 and 130 000, which coresponds to our motors PWM range of 0.4ms and 2.6 ms
            pulse_width <= 20000 + ( angle / 180 * 110000 );
                
            -- if the counter is smaller that the pulse width, we set the singal to 1, then 0 for the rest of the time period                                             
            if counter < pulse_width then
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
