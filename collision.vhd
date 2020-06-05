library IEEE;
use  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY collisionDect IS
	PORT(	SIGNAL pipe_on, bird_on, ground_on, powerup_on	: IN	STD_LOGIC;
			SIGNAL Collided, Powered	: OUT	STD_LOGIC
			);
END collisionDect;

architecture behaviour of collisionDect is

begin

Collided <= '1' when ((pipe_on = '1' and bird_on  = '1') or (ground_on  = '1' and bird_on  = '1')) else '0';
Powered <= '1'  when (powerup_on  = '1' and bird_on  = '1') else '0';

end behaviour;