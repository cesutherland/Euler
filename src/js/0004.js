var
  list = [],
  solution = 9009, // Largest 2 digit product palindrome
  n, i, j;

// Build test list
// > 99 because we do not need to test 2 digit numbers
for (i = 999; i > 99; i--) {
  for (j = i; j > 99; j--) {
    list.push(i * j);
  }
}
list.sort(function (a, b) {
  return a - b;
});

// Test sorted list for largest palindrome
for (i = list.length; i--;) {
  n = list[i];
  if (n - String.prototype.split.call(n, "").reverse().join('') === 0) {
    solution = n;
    break;
  }
}

console.log(solution);
