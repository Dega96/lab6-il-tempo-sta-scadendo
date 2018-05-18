library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

--Multiplexer da usare per scegliere i dati da far sommare. Parallelismo da 10 bit

entity mux_2_to_1_Address is
	port(
			sel	: in std_logic;
			address_a		: in unsigned (9 downto 0);
			address_b		: in unsigned (9 downto 0);
			--Data_10_11	: in signed (9 downto 0);
			address				: out unsigned (9 downto 0)
		);
end mux_2_to_1_Address;

architecture behav of mux_2_to_1_Address is
	begin
		
		process (sel, address_a, address_b)
			begin
				if (sel= '0') then
					address <= address_a;
				else
					address <= address_b;
				
				
				end if;
		end process;
end behav;