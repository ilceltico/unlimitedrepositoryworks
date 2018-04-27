library ieee;
  use ieee.std_logic_1164.all;
  use work.rand_gen_package.all;
  
entity rand_gen is
  port (
    RESET_N  					: in  std_logic;
    CLOCK   					: in  std_logic; 
  --ENABLE 						: in  std_logic; 
    RAND_OUTPUT				: out std_logic_vector (rand_gen_w-1 downto 0) 	  -- lfsr output
  );
end entity;

architecture rtl of rand_gen is
    signal counter		   	: std_logic_vector (rand_gen_w-1 downto 0);
    signal feedback 				: std_logic;

begin

	-- option for LFSR size 4
  feedback <= not(counter(rand_gen_w-1) xor counter(rand_gen_w-2));		

  shift_register : process (CLOCK, RESET_N) 
    begin
		if (RESET_N = '0') then
			counter <= (others=>'0');
      
		elsif (rising_edge(CLOCK)) then
         --elsif (en = '1') then
          counter <= counter(rand_gen_w-2 downto 0) & feedback;
      end if;  
     
    end process;
	 
  RAND_OUTPUT <= counter;
  
end architecture;


