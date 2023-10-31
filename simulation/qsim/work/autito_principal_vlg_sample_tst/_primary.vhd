library verilog;
use verilog.vl_types.all;
entity autito_principal_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        SENSOR          : in     vl_logic_vector(1 downto 0);
        STOP            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end autito_principal_vlg_sample_tst;
