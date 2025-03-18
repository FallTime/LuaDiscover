--[[
How can you check whether a value is a Boolean without using the function type?
R: Compare the value to the Boolean values
]]--

a = 10
b = false

print(a == true)  	--> false
print(a == false) 	--> false
print(b == true)  	--> false
print(b == false) 	--> true
