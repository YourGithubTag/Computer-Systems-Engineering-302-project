library verilog;
use verilog.vl_types.all;
entity TextDisplay_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        pixel_col       : in     vl_logic_vector(9 downto 0);
        pixel_row       : in     vl_logic_vector(9 downto 0);
        vert_sync       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TextDisplay_vlg_sample_tst;
