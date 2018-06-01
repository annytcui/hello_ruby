# Project Euler -> Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

=begin
# Solution #1
products = []
x = 100
y = 100
while x <= 999
  while y <= 999
    p = x * y
    if p.to_s == p.to_s.reverse
      products.push(p)
    end
    y += 1
  end
  x += 1
  y = 100
end

puts products.max
=end

# Solution #2
class Integer
  def palindromic?
    a = self.to_s
    return a == a.reverse
  end
end

max = 0
(100..999).each do |a|
  (a..999).each do |b|
    p = a * b
    if p > max and p.palindromic?
      max = p
    end
  end
end
puts max
