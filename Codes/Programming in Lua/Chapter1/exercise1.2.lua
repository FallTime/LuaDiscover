--[[
Exercise 1.2: Run the twice example, both by loading the file with the -l option and with dofile.

$ lua -i lib1.lua
> n = norm(3.4, 1.0)
> print(twice(n))  --> 7.0880180586677

$ lua -i
> dofile("lib1.lua")
> n = norm(3.4, 1.0)
> print(twice(n)) --> 7.0880180586677

Which way do you prefer?
The method with Dofile seemed more useful to me, since I can run it through a script instead enter in interactive mode.
Thinking about small snippets of code, both seem useful for testing their functions.
In this first contact, I prefer dofile.
]]--

dofile("lib1.lua")
n = norm(3.4, 1.0)
print(twice(n))