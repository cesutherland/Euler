val test = 1000
var solution = 0
for (i <- 1 to test) {
  if (i % 3 == 0 || i % 5 == 0) {
    solution += i;
  }
}
println(solution)
