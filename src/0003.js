var
  test = 600851475143;

function smallest_factor (n) {
  for (var i = 2; i <= n; i++) {
    if (n % i === 0) return i;
  }
}

function largest_factor (n) {

  var prime_factors = [];

  function largest (n) {
    var smallest = smallest_factor(n);
    prime_factors.push(smallest);
    return (n === smallest) ? Math.max.apply(this, prime_factors) : largest(n / smallest);
  }

  return largest(n);
}

console.log(largest_factor(test));
