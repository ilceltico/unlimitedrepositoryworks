library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HardwareInvaders is
		Port 
		( 
				CLOCK_50 : in  std_logic;
				RESET : in  std_logic
		);
end entity;

architecture RTL of HardwareInvaders is
	signal clock              : std_logic;

begin
end architecture;