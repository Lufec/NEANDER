 library ieee;
use ieee.std_logic_1164.all;
entity decoder_2_4 is
	port(
		key: in std_logic_vector(1 downto 0);
		sel: out std_logic_vector(3 downto 0)
		);
end decoder_2_4;

architecture choice of decoder_2_4 is
begin
	sel(0) <= not key(0) and not key(1);
	sel(1) <= not key(0) and key(1);
	sel(2) <= key(0) and not key(1);
	sel(3) <= key(0) and key(1);
end choice;