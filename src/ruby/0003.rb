number = 600851475143
i = 1
while number != 1
  i += 1
  number /= i until number % i != 0
end
p i
