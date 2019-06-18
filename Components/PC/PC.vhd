library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity PC is
    port(clk: in std_logic;
	 		reset: in std_logic;
			load: in std_logic;
			sum1: in std_logic;
			d: in std_logic_vector (7 downto 0);
         q: out std_logic_vector(7 downto 0));
end PC;

architecture behaviour of PC is

signal reg:std_logic_vector(7 downto 0):=(others =>'0');

begin
	q<=reg;
	process(clk,reset)
	begin
		if reset = '1' then 
			reg<=(others =>'0');
		elsif (clk'event and clk='1') then
			if load = '1' then 
				reg<=d;
		   elsif sum1 = '1' then
		   	reg<=reg + 1;
		end if;
	end if;
	end process;
end behaviour;
