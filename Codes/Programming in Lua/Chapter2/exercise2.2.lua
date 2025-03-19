--[[
An alternative implementation for the eight-queen problem would be to generate all possible permutations of 1 to 8 and,
for each permutation, to check whether it is valid. Change the program to use this approach. 
How does the performance of the new program compare with the old one? 
R: Because it tests with each movement, this new implementation ends up being much slower than the first

(Hint: compare the total number of permutations with the number of times that the original program calls the function
isplaceok.)
]]--

N = 8 -- board size

-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)

	for i = 1, n - 1 do -- for each queen already placed

		if (a[i] == c) or -- same column?
		   (a[i] - i == c - n) or -- same diagonal?
		   (a[i] + i == c + n) then -- same diagonal?

			return false -- place can be attacked
		end
	end

	return true -- no attacks; place is OK
end

-- print a board
function printsolution (a)

	for i = 1, N do -- for each row

		for j = 1, N do -- and for each column

			-- write "X" or "-" plus a space
 			io.write(a[i] == j and "X" or "-", " ")
 		end

 		io.write("\n")
 	end

 	io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
 	n = n or 1
 	if n > N then
    	-- verify the permutation
		local valid
		for r = 2, N do  -- start from 2nd row
			valid = isplaceok(a, r, a[r])
      		if not valid then break end
    	end
    	if valid then printsolution(a) end
  		else
    		-- generate all possible permutations
    		for c = 1, N do
      			a[n] = c
      			addqueen(a, n + 1)
    		end
  	end
end

 -- run the program
 addqueen({}, 1)
