# Nim supports three different types of variables, let, var, and const.
# As with most things, multiple variables can be declared in the same section.

proc getAlphabet(): string =
  var accm = ""
  for letter in 'a'..'z':  # see iterators
    accm.add(letter)
  return accm

# Computed at compilation time
const alphabet = getAlphabet()

# Mutable variables
var
  a = "foo"
  b = 0
  # Works fine, initialized to 0
  c: int

# Immutable variables
let
  d = "foo"
  e = 5
  # Compile-time error, must be initialized at creation

# Works fine, `a` is mutable
a.add("bar")
b += 1
c = 3

echo alphabet
echo a