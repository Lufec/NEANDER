library ieee;
use ieee.std_logic_1164.all;
entity Display is
	port(adress,data,AC: in std_logic_vector(7 downto 0);
		  turnOn: in std_logic;
		  dispAdd,dispD1,dispD2,dispAC1,dispAC2: out std_logic_vector(6 downto 0);
		  negAC,negData: out std_logic
		  );
end Display;

architecture disp of Display is
signal disp1,disp2,disp3,disp4,disp5: std_logic_vector(3 downto 0);
signal acAux, dataAux, dataInv, acInv: std_logic_vector(7 downto 0);
signal signAC,signD: std_logic;
component display1 is
	port(y: in std_logic_vector(3 downto 0); 
		  R:in std_logic;
		  dsp: out std_logic_vector(6 downto 0));
end component;
component sum8b is
	port (a :in std_logic_vector (7 downto 0);
			sub: in std_logic;
			s:out std_logic_vector(7 downto 0));
end component;

begin
	signD<=data(7);
	inD: sum8b port map(a=> not data, sub=>signD, s=>dataInv); 
	signAC<=AC(7);
	invAC: sum8b port map(a=> not AC, sub => signAC, s=>acInv);
	negAC<=signAC;
	process(data,adress,AC,dataInv,signD,signAC,dataAux,acAux,acInv)
	begin
	
	 if adress <"00001010" then
		dataAux<=data;
		negData<='0';
	 else
	   if data(7) = '1' then
		dataAux<=dataInv;
		else
		dataAux<=data;
		end if;
		negData<=signD;
	 end if;
	 if signAC = '1' then
		acAux<=acInv;
	 else
		acAux<=AC;
	 end if;
	 
	for i in 0 to 3 loop
		disp1(i)<=dataAux(i+4);
		disp2(i)<=dataAux(i);
	   disp3(i)<=adress(i);
		disp4(i)<=acAux(i+4);
		disp5(i)<=acAux(i);
	 end loop;
	end process;
	dsp1:display1 port map(y=>disp1, R=>turnOn, dsp=>dispD1);
	dsp2:display1 port map(y=>disp2, R=>turnOn, dsp=>dispD2);
	dsp3:display1 port map(y=>disp3, R=>turnOn, dsp=>dispAdd);
	dsp4:display1 port map(y=>disp4, R=>turnOn, dsp=>dispAC2);
	dsp5:display1 port map(y=>disp5, R=>turnOn, dsp=>dispAC1);

end disp;