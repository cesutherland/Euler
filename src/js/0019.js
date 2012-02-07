var
  start = new Date('1 Jan 1901'),
  end = new Date('31 Dec 2000'),
  current = new Date(start),
  solution = 0;

while (current < end) {
  if (!current.getDay()) {
    solution++;
  }
  current.setMonth(current.getMonth() + 1);
}

console.log(solution);
