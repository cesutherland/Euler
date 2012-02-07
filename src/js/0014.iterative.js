var
  test = 1e6,
  max = 1,
  solution,
  i, temp;

function count (n) {

  if (n < 1) return false;

  var
    count = 1;

  while (n !== 1) {
    count++;
    // Sequence iteration:
    n = (n % 2) ? 3 * n + 1 : n / 2;
  }

  return count;
}

for (i = 1; i < test; i++) {
  temp = count(i);
  if (temp >= max) {
    solution = i;
    max = temp;
  }
}

console.log(max, solution);
