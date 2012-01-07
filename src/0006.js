var
  test = 100,
  sumOfSquares = 0,
  squareOfSums = 0,
  i;

for (i = 1; i <= test; i++) {
  sumOfSquares += i * i;
  squareOfSums += i;
}
squareOfSums *= squareOfSums;

console.log(squareOfSums - sumOfSquares);
