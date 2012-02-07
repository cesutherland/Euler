var
  fs = require('fs'),
  file = '0067.txt',
  text = fs.readFileSync(file, 'UTF-8'),
  length = {},
  solution = -Number.MAX_VALUE,
  data, i, j, row, previous;

// Process that data
data = text.split(/\r\n/g);
for (i = 0; i < data.length; i++) {
  data[i] = data[i].split(' ');
  row = data[i];
  for (j = 0; j < row.length; j++) {
    row[j] = Number(row[j]);
  }
}

// Initial values
for (i = 0; i < data.length; i++) {
  row = data[i];
  for (j = 0; j < row.length; j++) {
    length[i + ',' + j] = row[j];
  }
}

// Longest path
for (i = 0; i < data.length; i++) {
  row = data[i];
  for (j = 0; j < row.length; j++) {
    if (previous) {

      // Edges:
      length[i + ',' + j] += Math.max(
        (j - 1 >= 0) ? length[(i - 1) + ',' + (j - 1)] : -Number.MAX_VALUE,
        (j < previous.length) ? length[(i - 1) + ',' + j] : -Number.MAX_VALUE
      );

      // Sneak in solution calculation:
      solution = Math.max(length[i + ',' + j], solution);
    }
  }

  previous = row;
}

console.log(solution);
