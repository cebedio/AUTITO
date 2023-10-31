library verilog;
use verilog.vl_types.all;
entity autito_principal_vlg_check_tst is
    port(
        En_A            : in     vl_logic;
        En_B            : in     vl_logic;
        IN_DRIVER       : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end autito_principal_vlg_check_tst;
