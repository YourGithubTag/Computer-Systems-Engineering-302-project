library verilog;
use verilog.vl_types.all;
entity TextDisplay is
    port(
        clk             : in     vl_logic;
        vert_sync       : in     vl_logic;
        pixel_row       : in     vl_logic_vector(9 downto 0);
        pixel_col       : in     vl_logic_vector(9 downto 0);
        pixel_on        : out    vl_logic
    );
end TextDisplay;
