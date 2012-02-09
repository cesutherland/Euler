total = i = j = 0
while i < 1000
  total += i
  i += 3
end
while j < 1000
  total += j if j % 3 > 0
  j += 5
end
p total
