library ieee;
use ieee.std_logic_1164.all;
entity eq2_top is 
	port(
		a, b: in std_logic_vector(1 downto 0);
		aeqb: out std_logic
		);
end eq2_top;

architecture vhd_87_arch of eq2_top is 
--- component declaration
	component eq1
		port(
			i0, i1: in std_logic;
			eq: out std_logic
		);
	end component;
	signal e0, e1: std_logic;
begin
	--- instantiate two 1-bit comparators
	eq_bit0_unit: eq1 --- use the declared name, eq1
		port map(i0=>a(0), i1=>b(0), eq=>e0);
	eq_bit1_unit: eq1 --- use the delcared name, eq1
		port map(i0=>a(1), i1=>b(1), eq=>e1);
	--- a and b are equal if individual bits are equal
	aeqb <= e0 and e1;
end vhd_87_arch;