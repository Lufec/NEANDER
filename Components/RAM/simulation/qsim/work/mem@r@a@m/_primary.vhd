library verilog;
use verilog.vl_types.all;
entity memRAM is
    port(
        ent             : in     vl_logic_vector(7 downto 0);
        key             : in     vl_logic_vector(7 downto 0);
        W               : in     vl_logic;
        R               : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        saida           : out    vl_logic_vector(7 downto 0)
    );
end memRAM;
