i = j = 999
palindromes = []

isPalindrome = (n) ->
  n = n + ''
  n is n.split('').reverse().join('')

for x in [i..0]
  do (x) -> for y in [j..0]
    do (y) -> palindromes.push x * y if isPalindrome x * y

console.log Math.max.apply(Math, palindromes)


