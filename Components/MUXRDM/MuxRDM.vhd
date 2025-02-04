library ieee;
use ieee.std_logic_1164.all;

entity MuxRDM is
	port ( selRdm: in std_logic_vector(1 downto 0);
			 inRdm1,inRdm2,inRdm3: in std_logic_vector(7 downto 0);
			 outRdm: out std_logic_vector(7 downto 0)
			);
end MuxRDM;

architecture behaviour of MuxRDM is
begin
	process(selRdm,inRdm1,inRdm2,inRdm3)
	begin
		if selRdm = "00" then
		outRdm <= inRdm1;
		elsif selRdm = "01" then
		outRdm <= inRdm2;		
		else 
		outRdm <= inRdm3;		
		end if;
		end process;
end behaviour;