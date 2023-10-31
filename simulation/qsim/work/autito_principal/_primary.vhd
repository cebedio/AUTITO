library verilog;
use verilog.vl_types.all;
entity autito_principal is
    port(
        En_A            : out    vl_logic;
        RESET           : in     vl_logic;
        CLK             : in     vl_logic;
        STOP            : in     vl_logic;
        SENSOR          : in     vl_logic_vector(1 downto 0);
        En_B            : out    vl_logic;
        IN_DRIVER       : out    vl_logic_vector(3 downto 0)
    );
end autito_principal;
