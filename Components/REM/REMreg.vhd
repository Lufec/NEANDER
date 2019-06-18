library ieee;
use ieee.std_logic_1164.all;
entity REMreg is
    port(clk: in std_logic;
			 reset: in std_logic;
	       loadREM: in std_logic;
          datain: in std_logic_vector(7 downto 0);
          dataOut: out std_logic_vector(7 downto 0));
end REMreg;

architecture ffd of REMreg is
signal reg: std_logic_vector(7 downto 0) := (others => '0');
    begin
	 dataOut <= reg;
    process (clk,loadREM,reset)
        begin
		  if reset='1' then
				reg<= (others =>'0');
		  elsif clk'event and clk='1' then
            if loadREM = '1' then
					reg<=dataIn;
				end if;
			end if;
    end process;
end ffd;