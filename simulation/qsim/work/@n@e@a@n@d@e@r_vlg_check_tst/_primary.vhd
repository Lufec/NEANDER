library verilog;
use verilog.vl_types.all;
entity NEANDER_vlg_check_tst is
    port(
        ac              : in     vl_logic_vector(7 downto 0);
        code            : in     vl_logic_vector(3 downto 0);
        dado            : in     vl_logic_vector(7 downto 0);
        DisplayAC1      : in     vl_logic_vector(6 downto 0);
        DisplayAC2      : in     vl_logic_vector(6 downto 0);
        DisplayAdd      : in     vl_logic_vector(6 downto 0);
        DisplayD1       : in     vl_logic_vector(6 downto 0);
        DisplayD2       : in     vl_logic_vector(6 downto 0);
        endereco        : in     vl_logic_vector(7 downto 0);
        loadAc          : in     vl_logic;
        loadnz          : in     vl_logic;
        loadpc          : in     vl_logic;
        loadrdm         : in     vl_logic;
        loadrem         : in     vl_logic;
        loadri          : in     vl_logic;
        read            : in     vl_logic;
        selrdm          : in     vl_logic_vector(1 downto 0);
        selrem          : in     vl_logic;
        selual          : in     vl_logic_vector(2 downto 0);
        sumpc           : in     vl_logic;
        TurndspOn       : in     vl_logic;
        write           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end NEANDER_vlg_check_tst;
