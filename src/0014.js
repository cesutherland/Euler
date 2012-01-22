var
  test = 1e6,
  max = 1,
  memoize = [],
  solution,
  i, temp;

function count (n) {
  if (n === 1) return 1;
  if (memoize[n]) return memoize[n];
  // Sequence recursion:
  return memoize[n] = 1 + count(n % 2 ? 3 * n + 1 : n / 2);
}

for (i = 1; i < test; i++) {
  temp = count(i);
  if (temp >= max) {
    solution = i;
    max = temp;
  }
}

console.log(max, solution);
