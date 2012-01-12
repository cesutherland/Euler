var
  power = 1000,
  two = [ 2 ],
  n = two,
  solution = 0,
  i;

for (i = 1; i < power; i++) {
  n = big_add(n, n);
}

function big_add (a, b) {

  var
    i = 0,
    length = Math.max(a.length, b.length),
    result = [ ],
    n;

  for (i = 0; i < length; i++) {
    n = (a[i] || 0) + (b[i] || 0) + (result[i] || 0);
    result[i] = n % 10;
    if (n >= 10) {
      result[i + 1] = Math.floor(n / 10);
    }
  }

  return result;
};

for (i = n.length; i--;) {
  solution += n[i];
}

console.log(solution);
