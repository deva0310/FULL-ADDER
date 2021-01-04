----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 17:45:05
-- Design Name: 
-- Module Name: Full_adder_using_half - Behavioral
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

entity halfadder is
Port (
a,b : in std_logic;
c,s : out std_logic

 );
end halfadder;

architecture Behavioral of halfadder is

begin
c <= a and b;
s <= a xor b;

end Behavioral;
-------------------
-----------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladder is
Port (
a,b,cin : in std_logic; 
cout,s    : out std_logic

 );
end fulladder;

architecture Behavioral of fulladder is
component halfadder is
Port (
a,b: in std_logic;
c,s : out std_logic

 );
end component;
signal t1 : std_logic; 
signal t2 : std_logic;
signal t3 : std_logic;
begin
S1 : halfadder port map(a=>a,b=>b,c=>t3,s=>t1);
S2 : halfadder port map(a=>cin,b=>t1,c=>t2,s=>s);
cout <= t2 or t3;
cout <= t2 or t3;
end Behavioral;