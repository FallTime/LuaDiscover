--[[
What is the value of the expression type(nil) == nil?(You can use Lua to check your answer.)
R: the value is false.
Can you explain this result?
R: type(nil) returns the string "nil" which is not nil.
]]--

print(type(nil) == nil)