# Project Euler -> Problem 1
# Find the sum of all the multiples of 3 or 5 below 1000.

# Solution #1
total = 0
(0...1000).each do |i|
  if (i % 3 == 0 || i % 5 == 0)
    total += i
  end
end
puts total

=begin

# Solution #2
puts (0...1000).select{ |i| i % 3 == 0 || i % 5 == 0 }.inject(&:+)

# Solution #3
total = 0
(0..333).each do |i|
  total += (i * 3)
end
(0...200).each do |i|
  total += (i * 5) if (i * 5) % 3 != 0
end
puts total

=end
