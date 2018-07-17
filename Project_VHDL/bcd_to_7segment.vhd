library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bcd_to_7segment is
	port (
		CLOCK           	: in std_logic;
		RESET_N				: in std_logic;
		BCD_NUMBER 			: in std_logic_vector(3 downto 0);
		
		DISPLAY 				: out std_logic_vector(6 downto 0)
	);
end entity;

architecture RTL of bcd_to_7segment is
begin
		
	binary_encoding : process (CLOCK, RESET_N)
	begin
		if(RESET_N = '0') then
			DISPLAY <= (others => '0');
			
		elsif rising_edge(CLOCK) then
		
			case BCD_NUMBER is
			when "0000" =>			-- 0
				DISPLAY <= X"7E";
			when "0001" =>			-- 1	
				DISPLAY <= X"30";
			when "0010" =>			-- 2
				DISPLAY <= X"6D";
			when "0011" =>			-- 3
				DISPLAY <= X"79";
			when "0100" => 		-- 4
				DISPLAY <= X"33";          
			when "0101" =>			-- 5
				DISPLAY <= X"5B";
			when "0110" =>			-- 6
				DISPLAY <= X"5F";
			when "0111" =>			-- 7
				DISPLAY <= X"70";
			when "1000" =>			-- 8
				DISPLAY <= X"7F";
			when "1001" =>			-- 9
				DISPLAY <= X"7B";
			when others =>
				DISPLAY <= X"47";	-- F
				
      end case;
    end if;
	end process;
	
end architecture;
	
	