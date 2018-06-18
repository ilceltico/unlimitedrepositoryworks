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
	RAND_OUTPUT					: out integer 	  -- lfsr output
  );
end entity;

architecture rtl of rand_gen is
    signal counter		   	: std_logic_vector (RAND_GEN_W-1 downto 0);
    signal feedback 				: std_logic;
	 variable temp 				: integer;
	 variable output				: integer;

begin

	
  feedback <= not(counter(RAND_GEN_W-1) xor counter(RAND_GEN_W-2));		

  shift_register : process (CLOCK, RESET_N) 
    begin
		if (RESET_N = '0') then
			counter <= (others=>'0');
			temp := 0;
			output := 0;
      
		elsif (rising_edge(CLOCK)) then
		
          counter <= counter(RAND_GEN_W-2 downto 0) & feedback;
			 temp := to_integer(unsigned(counter)); 
			 output := temp - (COLUMNS_PER_GRID * (temp/ COLUMNS_PER_GRID));
			 
      end if;  
     
    end process;
	 
  RAND_OUTPUT <= output;
  
end architecture;


