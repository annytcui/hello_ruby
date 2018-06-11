# Project Euler Problem 28

=begin
# Solution #1
limit = 1001 ** 2
numbers = (1..limit).to_a
i, j = 0, 2
sum = 1
while j <= 1000
  4.times do
    i += j
    sum += numbers[i]
  end

  j += 2
end

puts sum
=end

# Solution #2
sum = 1
(3..1001).step(2).each do |n|
  sum += n**2 + (n**2 - n + 1) \
      + (n**2 - 2*n + 2) + (n**2 - 3*n + 3)
end
puts sum
