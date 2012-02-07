var
  test = 20;

function n_choose_k (n, k) {

  var
    solution = 1,
    i;

  for (i = 2; i <= n; i++) {
    solution *= i;
    if (i <= k) solution /= i * i;
  }

  return solution;
}

console.log(Math.round(n_choose_k(2 * test, test)));
