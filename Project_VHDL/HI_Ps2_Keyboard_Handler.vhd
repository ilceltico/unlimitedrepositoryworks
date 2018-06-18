library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.hi_package.all;

  
entity ps2_keyboard_handler is
 
  port (
   CLOCK   						: in std_logic; 
	RESET_N  					: in std_logic;
	PS2_CODE_NEW				: in std_logic;
	PS2_CODE						: in std_logic_vector(7 downto 0); 
   
	MOVE_LEFT					: out std_logic;
	MOVE_RIGHT					: out std_logic;
	SHOOT							: out std_logic;
	START							: out std_logic
	);
end entity;

architecture rtl of ps2_keyboard_handler is


begin

	input_handler : process(CLOCK, RESET_N)
		variable prevPrevCode : std_logic_vector(7 downto 0) := "00000000";
		variable prevCode : std_logic_vector(7 downto 0) := "00000000";
		variable prev_ps2_code_new : std_logic := '1';
	begin
		if (RESET_N = '0') then
			prevPrevCode := "00000000";
			prevCode := "00000000";
			prev_ps2_code_new := '1';
			
			MOVE_LEFT 	<= '0';
			MOVE_RIGHT 	<= '0';
			SHOOT			<= '0';
			START			<= '0';
		elsif (rising_edge(CLOCK)) then
			if (PS2_CODE_NEW = '1' and PS2_CODE_NEW /= prev_ps2_code_new) then
--				if (PS2_CODE = x"1C") then --1C hex, i.e. 'A'
--					MOVE_LEFT <= '1';
--				end if;

				case (PS2_CODE) is
				when x"6B" => -- LEFT ARROW press is E0-6B, release is E0-F0-6B
					if (prevPrevCode = x"E0" and prevCode = x"F0") then
						MOVE_LEFT <= '0';	
					elsif (prevCode = x"E0") then
						MOVE_LEFT <= '1';
					end if;
					
				when x"74" => -- RIGHT ARROW press is E0-74, release is E0-F0-74
					if (prevPrevCode = x"E0" and prevCode = x"F0") then
						MOVE_RIGHT <= '0';
					elsif (prevCode = x"E0") then
						MOVE_RIGHT <= '1';
					end if;
				
				when x"1C" => -- A press is 1C, release is F0-1C
					if (prevCode = x"F0") then
						MOVE_LEFT <= '0';	
					else
						MOVE_LEFT <= '1';
					end if;
					
				when x"23" => -- D press is 23, release is F0-23
					if (prevCode = x"F0") then
						MOVE_RIGHT <= '0';
					else
						MOVE_RIGHT <= '1';
					end if;
				
				when x"29" => -- SPACEBAR press is 29, release is F0-29
					if (prevCode = x"F0") then
						SHOOT <= '0';
					else
						SHOOT <= '1';
					end if;
				
				when x"5A" => -- ENTER press is 5A, release is F0-5A
					if (prevCode = x"F0") then
						START <= '0';
					else
						START <= '1';
					end if;
				
				when others => 
				
				end case;
				
				prevPrevCode := prevCode;
				prevCode := PS2_CODE;
				
			end if;
			prev_ps2_code_new := PS2_CODE_NEW;
		end if;
	end process;

end architecture;