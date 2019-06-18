library verilog;
use verilog.vl_types.all;
entity UAL is
    port(
        inX             : in     vl_logic_vector(7 downto 0);
        inY             : in     vl_logic_vector(7 downto 0);
        selUAL          : in     vl_logic_vector(2 downto 0);
        oUAL            : out    vl_logic_vector(7 downto 0);
        zero            : out    vl_logic;
        Negativo        : out    vl_logic
    );
end UAL;
