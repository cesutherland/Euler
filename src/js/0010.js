var
  test = 2e6,
  solution = 0,
  sieve = [],
  p = 2,
  n;

// Sieve of Eratosthenes
while (p <= test / 2) {
  for (n = 2 * p; n <= test; n += p) {
    sieve[n] = true;
  }
  for (n = p + 1; n <= test; n += 1) {
    if (!sieve[n]) break;
  }
  p = n;
}

// Solution
for (n = 2; n <= test; n++) {
  if (!sieve[n]) solution += n;
}
console.log(solution);
