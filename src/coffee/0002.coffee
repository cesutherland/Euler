prev = 1
curr = 2
evenSum = 0
while curr < 4e6
  evenSum += curr unless curr % 2
  next = curr + prev
  prev = curr
  curr = next
console.log evenSum
