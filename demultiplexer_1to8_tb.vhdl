library ieee;
use ieee.std_logic_1164.all;

entity demultiplexer1_8_tb is
end demultiplexer1_8_tb;

architecture test of demultiplexer1_8_tb is
    signal input_test, select_test, output_test: std_logic
    component demultiplexer1_8
        port(
            i: in std_logic;
            S: in std_logic_vector(2 to 0);
            o: out std_logic_vector(8 to 0)
        );
        end component;

begin
    demux: demultiplexer1_8 portmap(i=> input_test, o=>output_test, s=>select_test);
    process
    begin
        wait for 500ms;
        input_test <= '0';
        select_test <= '000';

        wait for 500ms;
        input_test <= '1';
        select_test<='111';

        wait for 500ms;
        wait;
    end process;
end test;
