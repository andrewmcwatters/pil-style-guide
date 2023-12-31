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

-- https://www.lua.org/pil/1.3.html

-- "You should avoid identifiers starting with an underscore followed by one or
--  more uppercase letters (e.g., _VERSION); they are reserved for special uses
--  in Lua. Usually, I reserve the identifier _ (a single underscore) for a
--  dummy variable."

-- "A comment starts anywhere with a double hyphen (--) and runs until the end
--  of the line. Lua also offers block comments, which start with --[[ and run
--  until the corresponding ]]. A common trick, when we want to comment out a
--  piece of code, is to write the following:"

--[[
print(10)         -- no action (comment)
--]]

-- "Now, if we add a single hyphen to the first line, the code is in again:"

---[[
print(10)         --> 10
--]]

-- "In the first example, the -- in the last line is still inside the block
--  comment. In the second example, the sequence ---[[ does not start a block
--  comment; so, the print is outside comments. In this case, the last line
--  becomes an independent comment, as it starts with --."

-- https://www.lua.org/pil/2.4.html

-- space after arguments

a = "one string"
b = string.gsub(a, "one", "another")  -- change string parts
print(a)       --> one string
print(b)       --> another string

-- "We can delimit literal strings also by matching double square brackets
--  [[...]]. Literals in this bracketed form may run for several lines, may
--  nest, and do not interpret escape sequences. Moreover, this form ignores the
--  first character of the string when this character is a newline. This form is
--  especially convenient for writing strings that contain program pieces; for
--  instance,"

page = [[
<HTML>
<HEAD>
<TITLE>An HTML Page</TITLE>
</HEAD>
<BODY>
  <A HREF="http://www.lua.org">Lua</A>
  [[a text between double brackets]]
</BODY>
</HTML>
]]

write(page)

-- space before and after concatenation operator

print(10 .. 20)        --> 1020

-- "(The .. is the string concatenation operator in Lua. When you write it right
--  after a numeral, you must separate them with a space; otherwise, Lua thinks
--  that the first dot is a decimal point.)"

-- "To convert a number to a string, you can call the function tostring or
--  concatenate the number with the empty string:"

print(tostring(10) == "10")   --> true
print(10 .. "" == "10")       --> true

-- "Such conversions are always valid."

-- https://www.lua.org/pil/2.5.html

-- no space before or after keys

a = {}     -- create a table and store its reference in `a'
k = "x"
a[k] = 10        -- new entry, with key="x" and value=10
a[20] = "great"  -- new entry, with key=20 and value="great"
print(a["x"])    --> 10
k = 20
print(a[k])      --> "great"
a["x"] = a["x"] + 1     -- increments entry "x"
print(a["x"])    --> 11

-- no space before or after var, exp1, exp2, or exp3 in numeric fors

a = {}     -- empty table
-- create 1000 new entries
for i=1,1000 do a[i] = i*2 end
print(a[9])    --> 18
a["x"] = 10
print(a["x"])  --> 10
print(a["y"])  --> nil

-- no spaces in <var-list> in generic fors

-- print the lines
for i,line in ipairs(a) do
  print(line)
end

-- https://www.lua.org/pil/3.3.html

-- space before and after relational operators

max = (x > y) and x or y

-- https://www.lua.org/pil/3.6.html

-- align wrapped table values to the first entry

days = {"Sunday", "Monday", "Tuesday", "Wednesday",
        "Thursday", "Friday", "Saturday"}

-- no space before or after assignment operators in records

a = {x=0, y=0}

-- "You can always put a comma after the last entry. These trailing commas are
--  optional, but are always valid:"

a = {[1]="red", [2]="green", [3]="blue",}

-- "Such flexibility makes it easier to write programs that generate Lua tables,
--  because they do not need to handle the last element as a special case."

-- "Finally, you can always use a semicolon instead of a comma in a constructor.
--  We usually reserve semicolons to delimit different sections in a
--  constructor, for instance to separate its list part from its record part:"

{x=10, y=45; "one", "two", "three"}
