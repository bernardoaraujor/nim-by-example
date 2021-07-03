# The result variable is a special variable that serves as an implicit return variable,
# which exists because the control flow semantics of the return statement are rarely needed.
# The result variable is initialized in the standard way, as if it was declared with var result: ReturnType.
# For example, the getAlphabet() function could be rewritten more concisely as:

proc getAlphabet(): string =
  for letter in 'a'..'z':
    result.add(letter)

echo getAlphabet()