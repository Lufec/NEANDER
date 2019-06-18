library verilog;
use verilog.vl_types.all;
entity NEANDER_vlg_sample_tst is
    port(
        choice          : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        go              : in     vl_logic;
        InData          : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end NEANDER_vlg_sample_tst;
