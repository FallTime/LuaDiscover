--[[
Exercise 3.1: Which of the following are valid numerals? What are their values?
.0e12 valid. output 0 in lua 5.1
.e12  not valid. It is necessary to have some number before the exponent symbol.
0.0e  not valid. It is necessary to have some number after the exponent symbol.
0x12 valid. output 18 in lua 5.1
0xABFG not valid. there is no G in a hexadecimal number.
0xA valid. output 10 in lua 5.1
FFFF valid. output nil in lua 5.1
0xFFFFFFFF valid. output 4294967295 in lua 5.1
0x  not valid. It is necessary have number after prefix
0x1P10 not valid in lua 5.1. 
0.1e1 valid. output 1 in lua 5.1
0x0.1p1 not valid in lua 5.1.
]]--

print(.0e12)
-- print(e.12)
-- print(0.0e)
print(0x12)
-- print(0xABFG)
print(0xA)
print(FFFF)
print(0xFFFFFFFF)
-- print(0x)
-- print(0x1P10)
print(0.1e1)
-- print(0x0.1p1)