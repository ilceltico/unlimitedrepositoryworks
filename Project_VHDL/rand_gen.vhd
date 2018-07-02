library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.hi_package.all;

  
entity rand_gen is
  
  generic(
	RAND_GEN_W					: natural := 4
  );
  
  port (
   RESET_N  					: in std_logic;
   CLOCK   						: in std_logic; 
	--RANDGEN_INPUT1			: in std_logic;
	--RANDGEN_INPUT2			: in std_logic;
	RAND_OUTPUT					: out std_logic_vector (RAND_GEN_W-1 downto 0) 	  -- lfsr output
  );
end entity;

architecture rtl of rand_gen is
    signal s_register		   	: std_logic_vector (RAND_GEN_W-1 downto 0);
    signal feedback 				: std_logic;

begin

	

  shift_register : process (CLOCK, RESET_N) 
    begin
		if (RESET_N = '0') then
			s_register <= (others=>'0');
			--temp := 0;
      
		elsif (rising_edge(CLOCK)) then
		
			case (RAND_GEN_W) is 
				when 2 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
				when 3 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
				when 4 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
				when 5 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-3));
				when 6 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
				when 7 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
				when 8 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-3) xor s_register(RAND_GEN_W-4) xor s_register(RAND_GEN_W-5));
				when 9 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-5));
				when 10 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-4));
				when 11 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-3));
				when 12 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2) xor s_register(RAND_GEN_W-2) xor s_register(RAND_GEN_W-9));
				when 13 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2) xor s_register(RAND_GEN_W-2) xor s_register(RAND_GEN_W-6));
				when 14 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2) xor s_register(RAND_GEN_W-2) xor s_register(RAND_GEN_W-13));
				when 15 => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
				when others => feedback <= not(s_register(RAND_GEN_W-1) xor s_register(RAND_GEN_W-2));
			end case;
		
          s_register <= s_register(RAND_GEN_W-2 downto 0) & feedback;
			 --temp := to_integer(unsigned(counter)); 
			 
      end if;  
     
    end process;
	 
  RAND_OUTPUT <= s_register;
  
end architecture;


