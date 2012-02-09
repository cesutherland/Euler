prev = 1
curr = 2
even_sum = 0
while curr < 4000000
  even_sum += curr if curr % 2 == 0
  t = curr + prev
  prev = curr
  curr = t
end
p even_sum
