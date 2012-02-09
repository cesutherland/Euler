total = i = j = 0;
while i < 1e3
  total += i
  i += 3
while j < 1e3
  total += j if j % 3
  j += 5
console.log total
