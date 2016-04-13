library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity shifter is
port
(
a            : in unsigned        (7 downto 0);
shft         : in std_logic;
en                 : in std_logic;
result : out unsigned (7 downto 0)
);
 
end entity;
 
architecture rtl of shifter is
begin
process(en)
begin
if(en = '1') then
if(shft = '0') then
result <= a sll 1;
else
result <= a srl 1;
end if;
end if;
end process;
end rtl;