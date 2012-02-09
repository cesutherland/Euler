sumOfSquares = squareOfSum = 0
for x in [1..100]
  do (x) ->
    squareOfSum  += x
    sumOfSquares += x * x
squareOfSum *= squareOfSum
console.log(squareOfSum - sumOfSquares)
