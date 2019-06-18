library ieee;
use ieee.std_logic_1164.all;

entity MuxRem is
	port ( selRem: in std_logic;
			 inRem1,inRem2	: in std_logic_vector(7 downto 0);
			 outRem: out std_logic_vector(7 downto 0)
			);
end MuxRem;

architecture behaviour of MuxRem is
begin
	outRem <=inRem1 when selRem = '0' else inRem2; 

end behaviour;