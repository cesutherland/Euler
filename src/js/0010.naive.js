var
  test = 2e6,
  primes = [],
  n = 2,
  solution = 0,
  factor;

function smallest_factor (n) {
  var prime, i;
  for (i = primes.length; i--;) {
    prime = primes[i];
    if (n % prime === 0) {
      return prime;
    }
  }
  return n;
}

while (n < test) {
  factor = smallest_factor(n);
  if (factor === n) primes.push(n);
  n++;
}

console.log('Number of primes: ', primes.length);

for (i = primes.length; i--;) {
  solution += primes[i];
}

console.log(solution);
