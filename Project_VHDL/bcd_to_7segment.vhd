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
		
		-- 	7
		-- 2		6
		-- 	1
		-- 3		5
		-- 	4
		
			case BCD_NUMBER is
			when "0000" =>			-- 0
				DISPLAY <= "1000000";
			when "0001" =>			-- 1	
				DISPLAY <= "1111001";
			when "0010" =>			-- 2
				DISPLAY <= "0100100";
			when "0011" =>			-- 3
				DISPLAY <= "0110000";
			when "0100" => 		-- 4
				DISPLAY <= "0011001";          
			when "0101" =>			-- 5
				DISPLAY <= "0010010";
			when "0110" =>			-- 6
				DISPLAY <= "0000010";
			when "0111" =>			-- 7
				DISPLAY <= "1111000";
			when "1000" =>			-- 8
				DISPLAY <= "0000000";
			when "1001" =>			-- 9
				DISPLAY <= "0010000";
			when others =>
				DISPLAY <= "1111111";	-- F
				
      end case;
    end if;
	end process;
	
end architecture;
	
	