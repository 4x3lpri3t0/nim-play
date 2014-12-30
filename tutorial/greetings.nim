# This is a comment
echo("What's your name? ")
var name: string = readLine(stdin)
echo("Hi, ", name, "!")

var i, ii: int # declares x and y to have the type 'int'

var 
  a, b: int
  c, d, e: string

var x, y = 3  # assigns 3 to the variables x and y
echo "x ", x
echo "y ", y
x = 42
echo "x = ", x, ", y = ", y


# CONSTANT

const CO = "abc"

const
  AA = 1
  BB = 2
  CC = 3

# LET

# The let statement works like the var statement but the
# declared symbols are single assignment variables...
# After the initialization their value cannot change:

let le = "a"
# le = "b" # Illegal

# The difference between let and const is:
# let introduces a variable that can not be re-assigned,
# const means "enforce compile time evaluation and put it into a data section":

# const input = readLine(stdin) # Error: constant expression expected
# let input = readLine(stdin)   # works

