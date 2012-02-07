
var
  test = 500,
  n = 1,
  solution;

function divisors (n) {

  if (n === 1) return 1;

  var
    count = 2,
    i;

  for (i = 2; i <= n/2 + 1; i++) {
    if (n % i === 0) count++;
  }

  return count;
}

function triangle (n) {

  var
    sum = 0,
    i;

  for (i = n + 1; --i;) {
    sum += i;
  }

  return sum;
}

var d, t, boundary = Math.pow(10, 15);

while (++n) {
  t = triangle(n);
  d = divisors(t);
  if (d > 500) {
    solution = n;
    break;
  }
  if (t >= boundary) {
    console.log('fail!');
    break;
  }
}

console.log(t);
