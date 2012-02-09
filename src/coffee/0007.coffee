primes = [2, 3]
i = 5
alternate = 0

isPrime = (n) ->
  sqRoot = Math.sqrt n # atleast one factor of n must be <= sqrt(n)
  k = 2
  while k <= sqRoot
    return false unless n % k
    k++
  true

while primes.length < 10001
  primes.push i if isPrime i
  i += if alternate then 4 else 2 # All primes must be of form 6k +/- 1

console.log primes[10000]
