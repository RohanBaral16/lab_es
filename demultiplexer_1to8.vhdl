library ieee;
use ieee.std_logic_1164.all;

entity demultiplexer1_8 is
    port(
        i: in std_logic;
        S: in std_logic_vector(2 downto 0);
        o: out std_logic_vector(7 downto 0)
    );
end demultiplexer1_8;

architecture demux of demultiplexer1_8 is
begin
    process (S)
    begin
        case S is
            when "000" =>
                o <= (i, '0', '0', '0', '0', '0', '0', '0');
            when "001" =>
                o <= ('0', i, '0', '0', '0', '0', '0', '0');
            when "010" =>
                o <= ('0', '0', i, '0', '0', '0', '0', '0');
            when "011" =>
                o <= ('0', '0', '0', i, '0', '0', '0', '0');
            when "100" =>
                o <= ('0', '0', '0', '0', i, '0', '0', '0');
            when "101" =>
                o <= ('0', '0', '0', '0', '0', i, '0', '0');
            when "110" =>
                o <= ('0', '0', '0', '0', '0', '0', i, '0');
            when "111" =>
                o <= ('0', '0', '0', '0', '0', '0', '0', i);
        end case;
        
    end process;
end demux;
