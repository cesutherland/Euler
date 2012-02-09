i = j = 999
palindromes = []

def is_palindrome n
  n = n.to_s
  n == n.reverse
end

i.downto 1 do |x|
  j.downto 1 do |y|
    palindromes << x * y if is_palindrome x * y
  end
end

p palindromes.max
