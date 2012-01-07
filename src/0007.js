var
  test = 10001,
  primes = [],
  n = 2,
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

while (primes.length < test) {
  factor = smallest_factor(n);
  if (factor === n) primes.push(n);
  n++;
}

console.log(primes.pop());
