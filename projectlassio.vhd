<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
=======
library ieee; use ieee.std_logic_1164.all;
>>>>>>> origin/master
use ieee.numeric_std.all;

entity choosereg is
	port 
	(			
		ins	 : in unsigned	(15 downto 0);
		al		 : in unsigned (7 downto 0);
		bl		 : in unsigned (7 downto 0);
		enal	 : out std_logic;
		enbl	 : out std_logic;
		out1	 : out unsigned (7 downto 0);
		out2	 : out unsigned (7 downto 0)
	);
end entity;

architecture rtl of choosereg is
begin
	process(ins) begin
	enal <= '0';
	enbl <= '0';
	out1 <= "00000000";
	out2 <= "00000000";
	
--Adder case
		if(ins(15 downto 11) = "00000") then
		
			if(ins(10 downto 6) = "01011") then
				out1 <= al;
				out2 <= bl;
				
				if(ins(5 downto 0) = "000011") then
					enal <= '1';
					enbl <= '0';
					
				elsif(ins(5 downto 0) = "011000") then
					enal <= '0';
					enbl <= '1';
					
				else
					enal <= '0';
					enbl <= '0';
				end if;
				
			end if;
			
		elsif(ins(15 downto 11) = "10000") then
		
			if(ins(10 downto 8) = "000") then
				enal <= '1';
				enbl <= '0';
				out1 <= al;
				out2 <= ins(7 downto 0);
				
			elsif(ins(10 downto 8) = "011") then
				enal <= '0';
				enbl <= '1';
				out1 <= bl;
				out2 <= ins(7 downto 0);
				
			else
				enal <= '0';
				enbl <= '0';
			end if;
			
--AND case
		elsif(ins(15 downto 6) = "0010001011") then
			out1 <= al;
			out2 <= bl;
			
			if(ins(5 downto 0) = "000011") then
				enal <= '1';
				enbl <= '0';
				
			elsif(ins(5 downto 0) = "011000") then
				enal <= '0';
				enbl <= '1';
				
			else
				enal <= '0';
				enbl <= '0';
			end if;
			
--mov case
		elsif(ins(15 downto 11) = "10001") then
		
			if(ins(10 downto 6) = "01011") then
				out1 <= al;
				out2 <= bl;
				
				if(ins(5 downto 0) = "000011") then
					enal <= '0';
					enbl <= '1';
					
				elsif(ins(5 downto 0) = "011000") then
					enal <= '1';
					enbl <= '0';
					
				else
					enal <= '0';
					enbl <= '0';
				end if;
				
			end if;
			
		elsif(ins(15 downto 11) = "11000") then
		
			if(ins(10 downto 8) = "000") then
				enal <= '1';
				enbl <= '0';
				out1 <= al;
				out2 <= ins(7 downto 0);
				
			elsif(ins(10 downto 8) = "011") then
				enal <= '0';
				enbl <= '1';
				out1 <= bl;
				out2 <= ins(7 downto 0);
				
			else
				enal <= '0';
				enbl <= '0';
			end if;
			
--INC case
		elsif(ins(15 downto 3) = "1111111011000") then
		
			
			if(ins(2 downto 0) = "000") then
				enal <= '1';
				enbl <= '0';
				out1 <= al;
				
			elsif(ins(2 downto 0) = "011") then
				enal <= '0';
				enbl <= '1';
				out1 <= bl;
				
			else
				enal <= '0';
				enbl <= '0';
			end if;
			
--OR case
		elsif(ins(15 downto 6) = "0000101011") then
			out1 <= al;
			out2 <= bl;
			
			if(ins(5 downto 0) = "000011") then
				enal <= '0';
				enbl <= '1';
				
			elsif(ins(5 downto 0) = "011000") then
				enal <= '1';
				enbl <= '0';
				
			else
				enal <= '0';
				enbl <= '0';
			end if;
			
--Shft case
		elsif(ins(15 downto 4) = "110100001110") then
		
			if(ins(2 downto 0) = "000") then
				out1 <= al;
				enal <= '1';
				enbl <= '0';
				
			elsif(ins(2 downto 0) = "011") then
				out1 <= bl;
				enal <= '0';
				enbl <= '1';
				
			else
				enal <= '0';
				enbl <= '0';
			end if;
			
--Subtract case
		elsif(ins(15 downto 6) = "0010101011") then
				out1 <= al;
				out2 <= bl;
				
				if(ins(5 downto 0) = "000011") then
					enal <= '0';
					enbl <= '1';
					
				elsif(ins(5 downto 0) = "011000") then
					enal <= '1';
					enbl <= '0';
					
				else
					enal <= '0';
					enbl <= '0';
				end if;
				
		else
			enal <= '0';
			enbl <= '0';
			out1 <= "00000000";
			out2 <= "00000000";
		end if;
		
	end process;

end rtl;
