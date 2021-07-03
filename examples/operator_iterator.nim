# Iterators can also be operators in the standard way, with the name enclosed in backticks.
# For example, the standard library defines the slice iterator, which allows iterating through ordinal types.

# Give it a different name to avoid conflict
iterator `...`*[T](a: T, b: T): T =
  var res: T = T(a)
  while res <= b:
    yield res
    inc res

for i in 0...5:
  echo i