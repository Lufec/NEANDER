library verilog;
use verilog.vl_types.all;
entity UAL_vlg_sample_tst is
    port(
        inX             : in     vl_logic_vector(7 downto 0);
        inY             : in     vl_logic_vector(7 downto 0);
        selUAL          : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end UAL_vlg_sample_tst;
