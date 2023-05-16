library ieee;
use ieee.std_logic_1164.all;

entity binary_decoder_2to4 is 
	port(
		binary_in: in std_logic_vector(1 downto 0);
		decoded_out: out std_logic_vector(3 downto 0)
		);
end binary_decoder_2to4;

architecture behavioural of binary_decoder_2to4 is 
begin
	decoded_out(0) <= not (binary_in(0) or binary_in(1));
	decoded_out(1) <= not (binary_in(0) and not binary_in(1));
	decoded_out(2) <= not (not binary_in(0) and binary_in(1));
	decoded_out(3) <= not (binary_in(0)and binary_in(1));
end behavioural;