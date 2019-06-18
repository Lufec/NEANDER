library verilog;
use verilog.vl_types.all;
entity NEANDER is
    port(
        loadAc          : out    vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        go              : in     vl_logic;
        choice          : in     vl_logic_vector(1 downto 0);
        loadri          : out    vl_logic;
        loadrdm         : out    vl_logic;
        write           : out    vl_logic;
        read            : out    vl_logic;
        loadrem         : out    vl_logic;
        selrem          : out    vl_logic;
        loadpc          : out    vl_logic;
        sumpc           : out    vl_logic;
        selual          : out    vl_logic_vector(2 downto 0);
        InData          : in     vl_logic_vector(7 downto 0);
        selrdm          : out    vl_logic_vector(1 downto 0);
        loadnz          : out    vl_logic;
        TurndspOn       : out    vl_logic;
        ac              : out    vl_logic_vector(7 downto 0);
        code            : out    vl_logic_vector(3 downto 0);
        dado            : out    vl_logic_vector(7 downto 0);
        DisplayAC1      : out    vl_logic_vector(6 downto 0);
        DisplayAC2      : out    vl_logic_vector(6 downto 0);
        DisplayAdd      : out    vl_logic_vector(6 downto 0);
        DisplayD1       : out    vl_logic_vector(6 downto 0);
        DisplayD2       : out    vl_logic_vector(6 downto 0);
        endereco        : out    vl_logic_vector(7 downto 0)
    );
end NEANDER;
