library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        entrada         : in     vl_logic_vector(7 downto 0);
        decoded         : out    vl_logic_vector(3 downto 0)
    );
end decoder;
