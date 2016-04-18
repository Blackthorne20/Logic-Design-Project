
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity projectlassio is
	port 
	(			
		ins	 : in unsigned	(15 downto 0);
		exe	 : in std_logic;
		upd	 : in std_logic;
		dis1	 : out unsigned (6 downto 0);
		dis2	 : out unsigned (6 downto 0)
	);

end entity;

architecture rtl of projectlassio is

component addr port(
	add1		: in unsigned(7 downto 0);
	add2		: in unsigned(7 downto 0);
	enadd		: in std_logic;
	addres	: out unsigned(7 downto 0));
end component;

component andr port(
	andal		: in unsigned(7 downto 0);
	andbl		: in unsigned(7 downto 0);
	enand		: in std_logic;
	andres	: out unsigned(7 downto 0));
end component;

component movr port(
	inmov		: in unsigned(7 downto 0);
	enmov		: in std_logic;
	tomov	: out unsigned(7 downto 0));
end component;

component movr port(
	inmov		: in unsigned(7 downto 0);
	enmov		: in std_logic;
	tomov	: out unsigned(7 downto 0));
end component;

component inc port(
	ininc		: in unsigned(7 downto 0);
	eninc		: in std_logic;
	toinc		: out unsigned(7 downto 0));
end component;

component orr port(
	oral		: in unsigned(7 downto 0);
	orbl		: in unsigned(7 downto 0);
	enor		: in std_logic;
	orres		: out unsigned(7 downto 0));
end component;

component shifter port(
	insht		: in unsigned(7 downto 0);
	ensht		: in std_logic;
	tosht		: out unsigned(7 downto 0));
end component;

component subr port(
	subal		: in unsigned(7 downto 0);
	subbl		: in unsigned(7 downto 0);
	ensub		: in std_logic;
	subres	: out unsigned(7 downto 0));
end component;

component reg port(
	indat		: in unsigned(7 downto 0);
	en			: in std_logic;
	outdat	: out unsigned(7 downto 0));
end component;

component senden port(
		inst	 : in unsigned	(4 downto 0);
		enadd	 : out std_logic;
		enand	 : out std_logic;
		enmov	 : out std_logic;
		eninc	 : out std_logic;
		enor	 : out std_logic;
		ensht	 : out std_logic;
		ensub	 : out std_logic);
end component;

component choosereg port(
		ins	 : in unsigned	(15 downto 0);
		al		 : in unsigned (7 downto 0);
		bl		 : in unsigned (7 downto 0);
		enal	 : out std_logic;
		enbl	 : out std_logic;
		out1	 : out unsigned (7 downto 0);
		out2	 : out unsigned (7 downto 0));
end component;

component dcodr port(
		al          : in unsigned	(7 downto 0);
		resulta		: out unsigned (6 downto 0);
		resultb		: out unsigned	(6 downto 0));
end component;

signal enbl, enal, enadd, enmov, eninc, enor, ensht, ensub : std_logic;
signal toins1, toins2, alreg, blreg: unsigned (7 downto 0);
begin

	choosing: choosereg port map(ins(15 downto 0), alreg(7 downto 0), blreg(7 downto 0), enal, enbl, toins1 (7 downto 0), toins2(7 downto 0));
	sending: senden port map(ins(15 downto 11), enadd, enand, enmov, eninc, enor, ensht, ensub);
	
end rtl;