 library ieee;
use ieee.std_logic_1164.all;
entity memCell is
    port(clk: in std_logic;
			 reset: in std_logic;
	       X,Y,W: in std_logic;
          ent: in std_logic_vector(7 downto 0);
          saida: out std_logic_vector(7 downto 0));
end memCell;

architecture ffd of memCell is
signal reg: std_logic_vector(7 downto 0) := (others => '0');
signal ld: std_logic;
    begin
		process(reg,X,Y,W)
		begin
			if X ='1' and Y ='1' then
				saida <= reg;
			else
				saida <="00000000";
			end if;
		end process;
		
	 ld<=X and Y and W;
	 
    process (clk,ld,reset)
        begin
		  if reset='1'then
				reg<= (others =>'0');
		  elsif clk'event and clk='1' then
            if ld = '1' then
					reg<=ent;
				end if;
			end if;
    end process;
end ffd;