library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity reg is
port( a       :  in std_logic_vector(7 downto 0);
upd     :  in std_logic;
c       :  out std_logic_vector(7 downto 0));
end;
 
architecture r of reg is
begin
process(upd) begin
if rising_edge(upd) then
c <= a;
end if;
end process;
end;