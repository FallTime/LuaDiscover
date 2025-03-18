--[[
Consider the following expression:
	(x and y and (not z)) or ((not y) and x)
Are the parentheses necessary? Would you recommend their use in that expression?
No. I recomend, this simplifies the reading of precedence, perhaps useful for long expressions like this.

]]--

x,y,z = true, true, true
print(x and y and not z or not y and x) 		--> false
print((x and y and (not z)) or ((not y) and x)) --> false

