number = 600851475143
i = 1
while number isnt 1
  i++
  number /= i until number % i
console.log i
