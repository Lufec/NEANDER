library verilog;
use verilog.vl_types.all;
entity UAL_vlg_check_tst is
    port(
        Negativo        : in     vl_logic;
        oUAL            : in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UAL_vlg_check_tst;
