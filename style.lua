-- https://www.lua.org/pil/p1.3.html

-- "The book encloses "literal strings" between double quotes and single
--  characters, like `a´, between single quotes. Strings that are used as
--  patterns are also enclosed between single quotes, like '[%w_]*'."

-- space before comments
-- comments are in lowercase and do not end with punctuation
-- no space before or after arguments
-- no semicolons

-- program "Hello World"
print("Hello World")         --> Hello World

-- "The notation --> shows the output of a statement or, occasionally, the
--  result of an expression:"

-- ~~space before and after arithmetic operators~~

print(10)     --> 10
13 + 3        --> 16

-- https://www.lua.org/pil/1.html

-- space after function name
-- no space before or after parameters
-- 2-space indentation
-- no parentheses around conditionals
-- no space before or after arithmetic operators using a number
-- space before and after assignment operator

-- defines a factorial function
function fact (n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print("enter a number:")
a = io.read("*number")        -- read a number
print(fact(a))
