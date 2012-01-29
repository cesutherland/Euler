var
  test = 100,
  factorial = [1],
  solution = 0,
  i;

for (i = 1; i <= test; i++) {
  factorial = big_multiply(to_big(i), factorial);
}

for (i = 0; i < factorial.length; i++) {
  solution += factorial[i];
}

console.log(solution);


// Big math:
function big_multiply (a, b) {

  var
    result = [0],
    step, result, i, j;

  for (i = 0; i < a.length; i++) {

    // Multiply
    step = [];
    for (j = 0; j < i; j++) {
      step[j] = 0;
    }
    for (j = 0; j < b.length; j++) {
      step[j + i] = b[j] * a[i];
    }

    result = big_add(result, step);
  }

  return result;
}

function big_add (a, b) {

  var
    i = 0,
    length = Math.max(a.length, b.length),
    result = [],
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

function to_big (n) {
  var i;
  n = (n + '').split('');
  for (i = n.length; i--;) {
    n[i] = Number(n[i]);
  }

  return n;
}

function to_number (big) {
  return Number(to_string(big));
}
function to_string (big) {
  return (big.reverse()).join('');
}
