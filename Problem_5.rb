# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=begin
# Solution #1
# Defines a function that returns the smallest positive number evenly divisible by all of the numbers from x to y.
def EvenlyDivisible(x, y)
  num = 0
  divisibles = {}
  divisibles[x] = false
  until divisibles.has_value?(false) == false
    num += y
    (x..y).each do |i|
      if num % i == 0
        divisibles[i] = true
      else
        divisibles[i] = false
      end
    end
  end
  return num
end

puts EvenlyDivisible(1, 20)

=end

# Solution #2
puts [*1..20].reduce(:lcm)
