var
  test = 1000,
  max = 32,
  a, b, c;

function solver () {
  for (a = 1; a < 333; a++) {
    for (b = a + 1; b < 500; b++) {

      if (a + b >= 1000) break;

      for (c = b + 1; c < 1000; c++) {
        if (a + b + c === 1000) {
          if (a * a + b * b === c * c) {
            console.log(a, b, c);
            console.log(a * b * c);
            return;
          }
          break;
        }
      }
    }
  }
}

solver();
