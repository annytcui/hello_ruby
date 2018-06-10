# Project Euler -> Problem 26
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

require 'mathn'
def recurring_cycle_length(number)
  i = 1
  until (10**i -1) % number == 0
    i += 1
  end
  i
end

d = 0
max_length = 0
Prime.each do |prime|
  break if prime >= 1000
  next if prime == 2 or prime == 5

  length = recurring_cycle_length(prime)
  if length > max_length
    d, max_length = prime, length
  end
end

puts d, max_length
