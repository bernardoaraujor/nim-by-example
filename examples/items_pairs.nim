# When iterating over an object with one item, Nim will call an iterator called
# items with the first parameter the type you want to iterate over.
# The same thing happens when iterating with two items, but in that case, the pairs iterator is called.

type
  CustomRange = object
    low: int
    high: int

iterator items(range: CustomRange): int =
  var i = range.low
  while i <= range.high:
    yield i
    inc i

iterator pairs(range: CustomRange): tuple[a: int, b: char] =
  for i in range:  # uses CustomRange.items
    yield (i, char(i + ord('a')))

for i in CustomRange(low: 0, high: 3):
  echo i

for i, c in CustomRange(low: 0, high: 3):
  echo i, c