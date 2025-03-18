--[[
Exercise 1.1: Run the factorial example. What happens to your program if you enter a negative number?
R: The Program ends up giving stackoverflow with a negative input value.
Modify the example to avoid this problem.
]]--

-- defines a factorial function
function fact (n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

print("enter a number:")
a = io.read("*n") -- reads a number

-- I added a condition before calling the function
if type(a) == "number" and a > 0 then
	print(fact(a))
else
	print("Invalid Input")
end
