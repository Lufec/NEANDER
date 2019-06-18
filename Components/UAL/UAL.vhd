library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UAL is
Port ( 
inX : in STD_LOGIC_VECTOR (7 downto 0);
inY : in STD_LOGIC_VECTOR (7 downto 0);
selUAL : in std_LOGIC_VECTOR (2 downto 0);
oUAL : out STD_LOGIC_VECTOR (7 downto 0);
NZ: out std_LOGIC_VECTOR(1 downto 0));
end UAL;

architecture Behavioral of UAL is
  signal c : std_logic_vector(6 downto 0) := "0000000";
  signal somando: std_LOGIC_VECTOR (7 downto 0);
  signal saida: std_LOGIC_VECTOR(7 downto 0);
  begin  
		process(inX,inY,c)
		begin
			somando(0) <= inX(0) xor inY(0);  
			c(0) <= inX(0) and inY(0);
  			for i in 1 to 6 loop			
				somando(i) <= inX(i) xor inY(i) xor c(i-1);
				c(i) <= (inX(i) and inY(i)) or (inX(i) and c(i-1)) or (inY(i) and c(i-1));
			end loop;
		end process;
		somando(7) <= inX(7) xor inY(7) xor c(6);
	
		with selUAL select
			saida<= somando when b"000",
					  inX and inY when b"001",
					  inX or inY when b"010",
					  not inX when b"011",
					  inY when b"100",
					  x"00" when others; 
		
NZ(0) <= not(saida(7)) and not(saida(6)) and not(saida(5)) and not(saida(4)) and not(saida(3)) and not(saida(2)) and not(saida(1)) and not(saida(0));
--Zero <= "1" when saida = "00000000" else "ZZZZZZZZ";
NZ(1) <= saida(7); 
oUAL <= saida;

 end Behavioral;