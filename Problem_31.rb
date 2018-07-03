# Project Euler -> Problem 31

$coins = [1, 2, 5, 10, 20, 50, 100, 200]

def number_of_ways(change, index)
  return 1 if index == 0

  (0..change/$coins[index]).inject(0) { |sum, num|
    sum + number_of_ways(change - num*$coins[index], \
      index-1)}
end

puts number_of_ways(200, 7)
