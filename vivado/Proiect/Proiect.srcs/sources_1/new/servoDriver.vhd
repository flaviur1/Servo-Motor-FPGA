library IEEE;
use IEEE.STD_LOGIC_1164.ALL;    
use IEEE.NUMERIC_STD.ALL;   
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity servoDriver is
  Port(clk : in std_logic;
       reset: in std_logic;
       angle: in std_logic_vector(7 downto 0);
       toMotor: out std_logic);
end servoDriver;

architecture Behavioral of servoDriver is

signal div_clk : std_logic;
signal angle_int: integer;
signal pwm: std_logic;

begin

clkDiv: entity work.servoClock port map(clk, reset, div_clk);
angle_int <= to_integer(unsigned (angle));
pwmGen: entity work.servoSignal port map(div_clk, reset, angle_int, pwm);

toMotor <= pwm;


end Behavioral;
