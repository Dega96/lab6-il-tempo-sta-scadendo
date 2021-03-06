library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder is
	port(
			EN					: in std_logic;
			D	: out std_logic_vector( 3 downto 0);
			sel				: in std_logic_vector( 1 downto 0)
		 );
end Decoder;

Architecture behav of Decoder is 

	begin
		process(EN, sel)
			begin
			if(EN = '1') then
				if(sel = "00") then					
					D <= "0001";
					--D <= "1000";
				elsif (sel = "01") then
					D <= "0010";
					--D <= "0100";
				elsif (sel = "10") then
					D <= "0100";
					--D <= "0010";
				else
				--D <= "0001";
					D <= "1000";
				end if;
			else
				D <= "0000";
			end if;
			end process;
end behav;