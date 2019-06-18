library ieee;
use ieee.std_logic_1164.all;
entity NZ is
    port(clk: in std_logic;
			 reset: in std_logic;
	       loadNZ: in std_logic;
          datain: in std_logic_vector(1 downto 0);
          dataOut: out std_logic_vector(1 downto 0));
end NZ;

architecture ffd of NZ is
signal reg: std_logic_vector(1 downto 0) := (others => '0');
    begin
	 dataOut <= reg;
    process (clk,loadNZ,reset)
        begin
		  if reset='1' then
				reg<= (others =>'0');
		  elsif clk'event and clk='1' then
            if loadNZ = '1' then
					reg<=dataIn;
				end if;
			end if;
    end process;
end ffd;