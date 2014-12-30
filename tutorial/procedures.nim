# PROCEDURES

# A procedure is a method or function.

proc prompt(question: string): bool =
  echo(question, " (y/n)")
  while true:
    case readLine(stdin)
    of "y", "Y", "yes", "Yes": return true
    of "n", "N", "no", "No": return false
    else: echo("Please be clear: yes or no")

if prompt("Should I delete all your important files?"):
  echo("Sorry dude, I'm afraid I can't do that.")
else:
  echo("That's what I thought!")

# ----

# RESULT VARIABLE

# The result value is always returned automatically at the
# end a procedure if there is no return statement at the exit.

proc sumTillNegative(x:varargs[int]): int =
  for i in x:
    if i < 0:
      return
    result += i

echo sumTillNegative()            # echos 0
echo sumTillNegative(3, 4, 5)     # echos 12
echo sumTillNegative(3, 4, -1, 6) # echos 7

# The result variable is also already initialised with the type's default value. 

# ----

# PARAMETERS

# Parameters are constant in the procedure body

proc printSeq(s: seq, nprinted: int = -1) =
  var nprinted = if nprinted == -1: s.len else: min(nprinted, s.len)
  for i in 0 .. <nprinted:
    echo s[i]

printSeq(@[1, 2, 3, 4], -1)     # Prints every int in the sequence
printSeq(@[100, 200, 300], 1)  # Prints first int in the sequence

# If the procedure needs to modify the argument for the caller,
# a var parameter can be used:

proc divmod(a, b: int; res, remainder: var int) =
  res = a div b        # integer division
  remainder = a mod b  # integer modulo operation

var
  x, y: int
divmod(8, 5, x, y) # modifies x and y
echo(x)
echo(y)