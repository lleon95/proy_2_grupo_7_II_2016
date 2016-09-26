library verilog;
use verilog.vl_types.all;
entity proyecto2_empaquetado is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        Up              : in     vl_logic;
        Down            : in     vl_logic;
        Left            : in     vl_logic;
        Rig             : in     vl_logic;
        int1            : in     vl_logic;
        int2            : in     vl_logic;
        int3            : in     vl_logic;
        RD              : out    vl_logic;
        CS              : out    vl_logic;
        AD              : out    vl_logic;
        WR              : out    vl_logic;
        HSync           : out    vl_logic;
        VSync           : out    vl_logic;
        DatAdd          : inout  vl_logic_vector(7 downto 0);
        R               : out    vl_logic_vector(3 downto 0);
        G               : out    vl_logic_vector(3 downto 0);
        B               : out    vl_logic_vector(3 downto 0);
        PosX            : out    vl_logic_vector(9 downto 0);
        PosY            : out    vl_logic_vector(9 downto 0)
    );
end proyecto2_empaquetado;
