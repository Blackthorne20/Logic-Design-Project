library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity dcodr is
	port
	(
		a           : in unsigned	(7 downto 0);
		resulta		: out unsigned (6 downto 0);
		resultb		: out unsigned	(6 downto 0)
	);
end entity;

architecture rtl of dcodr is
begin
	process(a)
	begin
		--Display1:
		if(a(7 downto 4) = "0000") then		--0
			resulta <= "1000000";--
		elsif(a(7 downto 4) = "0001") then	--1
			resulta <= "1111001";--
		elsif(a(7 downto 4) = "0010") then	--2
			resulta <= "0100100";--
		elsif(a(7 downto 4) = "0011") then	--3
			resulta <= "0110000";--
		elsif(a(7 downto 4) = "0100") then	--4
			resulta <= "0011001";--
		elsif(a(7 downto 4) = "0101") then	--5
			resulta <= "0010010";
		elsif(a(7 downto 4) = "0110") then	--6
			resulta <= "0000010";
		elsif(a(7 downto 4) = "0111") then	--7
			resulta <= "1111000";
		elsif(a(7 downto 4) = "1000") then	--8
			resulta <= "0000000";
		elsif(a(7 downto 4) = "1001") then	--9
			resulta <= "0011000";
		elsif(a(7 downto 4) = "1010") then	--10:A
			resulta <= "0001000";
		elsif(a(7 downto 4) = "1011") then	--11:B
			resulta <= "0000011";
		elsif(a(7 downto 4) = "1100") then	--12:C
			resulta <= "1000110";
		elsif(a(7 downto 4) = "1101") then	--13:D
			resulta <= "0100001";
		elsif(a(7 downto 4) = "1110") then	--14:E
			resulta <= "0000110";
		elsif(a(7 downto 4) = "1111") then	--15:F
			resulta <= "0001110";	
		end if;
		--Display2:
		if(a(3 downto 0) = "0000") then		--0
			resultb <= "1000000";
		elsif(a(3 downto 0) = "0001") then	--1
			resultb <= "1111001";
		elsif(a(3 downto 0) = "0010") then	--2
			resultb <= "0100100";
		elsif(a(3 downto 0) = "0011") then	--3
			resultb <= "0110000";
		elsif(a(3 downto 0) = "0100") then	--4
			resultb <= "0011001";
		elsif(a(3 downto 0) = "0101") then	--5
			resultb <= "0010010";
		elsif(a(3 downto 0) = "0110") then	--6
			resultb <= "0000010";
		elsif(a(3 downto 0) = "0111") then	--7
			resultb <= "1111000";
		elsif(a(3 downto 0) = "1000") then	--8
			resultb <= "0000000";
		elsif(a(3 downto 0) = "1001") then	--9
			resultb <= "0011000";
		elsif(a(3 downto 0) = "1010") then	--10:A
			resultb <= "0001000";
		elsif(a(3 downto 0) = "1011") then	--11:B
			resultb <= "0000011";
		elsif(a(3 downto 0) = "1100") then	--12:C
			resultb <= "1000110";
		elsif(a(3 downto 0) = "1101") then	--13:D
			resultb <= "0100001";
		elsif(a(3 downto 0) = "1110") then	--14:E
			resultb <= "0000110";
		elsif(a(3 downto 0) = "1111") then	--15:F
			resultb <= "0001110";	
		end if;
	end process;
end rtl;