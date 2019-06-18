library IEEE;
use ieee.std_logic_1164.all;

entity decoder is
	port(
		entrada: in std_logic_vector(7 downto 0);
		decoded: out std_logic_vector(3 downto 0)

	);
end decoder;

architecture behaviour of decoder is
begin
	with entrada select
		decoded <= x"0" when x"00",
					  x"1" when x"10",
		           x"2" when x"20",
		           x"3" when x"30",
		           x"4" when x"40",
		           x"5" when x"50",
		           x"6" when x"60",
		           x"8" when x"80",
		           x"9" when x"90",
		           x"A" when x"A0",
		           x"B" when x"B0",
		           x"F" when x"F0",
		           x"0" when others;
end behaviour;