library ieee;
use ieee.std_logic_1164.all;
entity Display is
	port(adress,data,AC: in std_logic_vector(7 downto 0);
		  turnOn: in std_logic;
		  dispAdd,dispD1,dispD2,dispAC1,dispAC2: out std_logic_vector(6 downto 0)
		  );
end Display;

architecture disp of Display is
signal disp1,disp2,disp3,disp4,disp5: std_logic_vector(3 downto 0);
component display1 is
	port(y: in std_logic_vector(3 downto 0); 
		  R:in std_logic;
		  dsp: out std_logic_vector(6 downto 0));
end component;

begin
	process(data,adress,AC)
	begin
	 for i in 0 to 3 loop
		disp1(i)<=data(i+4);
		disp2(i)<=data(i);
	   disp3(i)<=adress(i);
		disp4(i)<=AC(i+4);
		disp5(i)<=AC(i);
	 end loop;
	end process;
	dsp1:display1 port map(y=>disp1, R=>turnOn, dsp=>dispD1);
	dsp2:display1 port map(y=>disp2, R=>turnOn, dsp=>dispD2);
	dsp3:display1 port map(y=>disp3, R=>turnOn, dsp=>dispAdd);
	dsp4:display1 port map(y=>disp4, R=>turnOn, dsp=>dispAC2);
	dsp5:display1 port map(y=>disp5, R=>turnOn, dsp=>dispAC1);

end disp;