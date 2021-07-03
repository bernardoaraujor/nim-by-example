# Nim is a statically typed language. As such, each variable has a type associated with it.
# As seen in the previous example these types are inferred in the const, let and var declarations by the compiler.

var x = int(1.0 / 3) # type conversion

var y: seq[int] = @[] # empty seq needs type specification

var z = "Foobar"
proc ffi(foo: ptr array[6, char]) = echo repr(foo)
ffi(cast[ptr array[6, char]](addr z[0]))