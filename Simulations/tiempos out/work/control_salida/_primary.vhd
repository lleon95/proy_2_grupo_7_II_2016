library verilog;
use verilog.vl_types.all;
entity control_salida is
    port(
        AD              : out    vl_logic;
        clk             : in     vl_logic;
        final           : out    vl_logic;
        CS              : out    vl_logic;
        escreg          : out    vl_logic;
        reset           : in     vl_logic;
        iniciar         : in     vl_logic;
        esc             : in     vl_logic;
        RD              : out    vl_logic;
        escribe         : in     vl_logic;
        WR              : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        dato            : in     vl_logic_vector(7 downto 0);
        direccion       : in     vl_logic_vector(7 downto 0)
    );
end control_salida;
