library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity fp_adder_test is
	port (
		sw: in std_logic_vector(9 downto 0);
		key: in std_logic_vector(3 downto 0);
		hex3, hex2, hex1, hex0: out std_logic_vector(6 downto 0)
	);
end fp_adder_test;

architecture arch of fp_adder_test is
	signal sign1, sign2: std_logic;
	signal exp1, exp2: std_logic_vector(3 downto 0);
	signal frac1, frac2: std_logic_vector(7 downto 0);
	signal sign_out: std_logic;
	signal exp_out: std_logic_vector(3 downto 0_;
	signal frac_out: std_logic_vector(7 downto 0);
	begin
	--- set up the fp adder input signals
	sign1 <= sw(9);
	exp1 <= "1000";
	fract <=1 '1' & sw(1) & sw(0) & "10101";
	sign2 <= sw(8);
	exp2 <= not key;
	frac2 <= sw(7 downto 0);
	
	-- instantiate fp adder
	fp_add_unit: entity work.bin_to_seg
		port map(bin=>exp_out, sseg=>hex0);
		-- 4 LSBs of fraction