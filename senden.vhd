library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity senden is
	port
	(
		a             : in unsigned        (4 downto 0);
		enadd         : out std_logic;
		enand         : out std_logic;
		enmov         : out std_logic;
		eninc         : out std_logic;
		enor          : out std_logic;
		ensht         : out std_logic;
		ensub         : out std_logic
	);
 
end entity;
 
architecture rtl of senden is
begin
	process(a)
	begin
		if(a(3 downto 0) = "0000")then
			enadd <= '1';
		else
			enadd <= '0';
		end if;
 
		if(a(4 downto 0) = "00100")then
			enand <= '1';
		else
			enand <= '0';
		end if;
 
		if(a(4 downto 0) = "10001")then
			enmov<= '1';
		else
			enmov <= '0';
		end if;
 
		if(a(4 downto 0) = "11000")then
			enmov<= '1';
		else
			enmov <= '0';
		end if;
 
		if(a(4 downto 0) = "11111")then
			eninc <= '1';
		else
			eninc <= '0';
		end if;
 
		if(a(4 downto 0) = "00001")then
			enor <= '1';
		else
			enor <= '0';
		end if;
		 
		if(a(4 downto 0) = "11010")then
			ensht <= '1';
		else
			ensht <= '0';
		end if;
		 
		if(a(4 downto 0) = "00101")then
			ensub<= '1';
		else
			ensub <= '0';
		end if;
 
	end process;
end rtl;