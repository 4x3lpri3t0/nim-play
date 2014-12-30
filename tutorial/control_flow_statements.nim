echo("What's your name? ")
let name = readLine(stdin)
if name == "":
  echo("Poor soul, you lost your name?")
elif name == "name":
  echo("Very funny, your name is name.")
else:
  echo("Hi, ", name, "!")

echo("\n===============================\n")

echo("What's your user? ")
let user = readLine(stdin)
case user
of "admin":
  echo("Welcome Mr. administrator!")
of "hacker":
  echo("Get out of here!")
else:
  echo("Hi ", user, "!")

echo("\n===============================\n")

from strutils import parseInt

echo("A number please: ")
let n = parseInt(readLine(stdin))
case n
of 0..2, 4..7: echo("The number is in the set: {0, 1, 2, 4, 5, 6, 7}")
of 3, 8: echo("The number is 3 or 8")
else: discard
# The discard statement is a do nothing statement.

echo("\n===============================\n")

echo("What's your favorite ice cream flavor? ")
var flavor = readLine(stdin)
while flavor == "":
  echo("Please, tell me! :")
  flavor = readLine(stdin)

echo("\n===============================\n")

echo("I'll count to ten, go hide! :")
for i in countup(1, 10):
  echo($i)
# The built-in $ operator turns an integer (int) and many other types into a string.
for i in 1..3:
  echo("Nim!")

echo("\n===============================\n")

# BREAK

while true:
  echo("Enter empty string or I'll keep looping")
  let x = readLine(stdin)
  if x == "": break
  echo(x)

block myblock:
  echo("entering block")
  while true:
    echo("looping")
    break # leaves the loop, but not the block
  echo("still in block")

block myblock2:
  echo("entering block")
  while true:
    echo("looping")
    break myblock2
echo("not in block anymore")

echo("\n===============================\n")

# CONTINUE

# A continue statement starts the next iteration immediately:

var condition = true
while condition:
  condition = false
  if condition == false: continue
  echo("This will never be printed")

echo("\n===============================\n")

# WHEN

when system.hostOS == "windows":
  echo("running on Windows!")
elif system.hostOS == "linux":
  echo("running on Linux!")
elif system.hostOS == "macosx":
  echo("running on Mac OS X!")
else:
  echo("unknown operating system")

echo("""
The when statement is almost identical to the if statement with some differences:

* Each condition has to be a constant expression since it is evaluated by the compiler.
* The statements within a branch do not open a new scope.
* The compiler checks the semantics and produces code only for the statements that belong to the first condition that evaluates to true.

The when statement is useful for writing platform specific code, similar to the #ifdef construct in the C programming language.

Note: To comment out a large piece of code, it is often better to use a when false: statement than to use real comments. This way nesting is possible.
""")