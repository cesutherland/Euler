val test = 4e6
var previous = 0
var current = 1
var temp = 0
var solution = 0

while (current < test) {
  if (current % 2 == 0) solution += current
  temp = current
  current = current + previous;
  previous = temp;
}
println(solution)
