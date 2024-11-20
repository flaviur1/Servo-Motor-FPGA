library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity servoClock is
    Port(clk : in std_logic;
         rst : in std_logic;
         clk_out : out std_logic);
end servoClock;

architecture Behavioral of servoClock is

signal aux_clk : std_logic := '0';
signal counter : integer := 0; -- la 50MHz, inseamna ca in 20 de ms clk-ul placii se schimba de 1 000 000 ori

begin

    process(clk,rst)
    begin
        if rst = '1' then
            aux_clk <= '0';
            counter <= 0;
        elsif rising_edge(clk) then
            if counter = 1000000 then
                aux_clk <= not(aux_clk);
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    
        clk_out <= aux_clk;
    end process;

end Behavioral;
