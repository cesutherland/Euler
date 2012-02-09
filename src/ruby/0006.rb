sum_of_squares = square_of_sum = 0
(1..100).each do |x|
  square_of_sum += x
  sum_of_squares += x * x
end
square_of_sum *= square_of_sum
p square_of_sum - sum_of_squares
