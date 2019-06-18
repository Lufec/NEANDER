library verilog;
use verilog.vl_types.all;
entity memRAM_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ent             : in     vl_logic_vector(7 downto 0);
        key             : in     vl_logic_vector(7 downto 0);
        R               : in     vl_logic;
        reset           : in     vl_logic;
        W               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memRAM_vlg_sample_tst;
