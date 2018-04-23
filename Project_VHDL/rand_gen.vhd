library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity rand_gen is
	port
	(
			CLOCK								: in std_logic;
			RESET_N							: in std_logic;
			RAND_OUTPUT						: out integer
	);
	
end rand_gen;

architecture behavior of rand_gen is 

	signal rand_num : integer := 0;

begin

	process
	
		 variable seed1, seed2: positive;               -- seed values for random generator
		 variable rand: real;   -- random real-number value in range 0 to 1.0  
		 variable range_of_rand : integer;    -- the range of random values created will be 0 to +1000.
		 
	begin
		
		if (RESET_N = '0') then 
			
			seed1 := 0;
			seed2:= 0;
			range_of_rand := 0; -- NON VA!!!!
			
		elsif (rising_edge(CLOCK)) then
		 
		 -- srand(seed1, seed2, rand);   -- generate random number
		 -- rand_num <= integer(rand*range_of_rand);  -- rescale to 0..1000, convert integer part 
		 -- RAND_OUTPUT <= rand_num;
		 --wait for 10 ns; --it generates random values every 10 ns
		 
		 end if;
		 
	end process;

end behavior;

