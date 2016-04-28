library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity addr is
	port
	(
		a			: in unsigned	(7 downto 0);
		b			: in unsigned 	(7 downto 0);
		en       : in std_logic;
		result	: out unsigned (7 downto 0)
	);
 
end entity;
 
architecture rtl of addr is
begin
	process(en)
	begin
		if(en = '1') then
			result <= a + b;
		else
			result <= "00000000";
		end if;
	end process;
end rtl;