----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2020 17:31:33
-- Design Name: 
-- Module Name: FullAdderRTL - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdderRTL is
Port ( 
A,B,Cin : in std_logic; 
S,Cout  : out std_logic

);
end FullAdderRTL;

architecture Behavioral of FullAdderRTL is
signal t1,t2,t3 : std_logic := '0';
begin
t1 <= A xor B;
t2 <= t1 and Cin;
t3 <= A and B;
S  <= t1 xor Cin;
Cout <= t2 or t3;
end Behavioral;
