# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

class Integer
  def !
    (1..self).inject(1, :*)
  end
end

def curious?(number)
  digits = number.to_s.split(//)
  factorials_sum = digits.map{ |d| !(d.to_i) }.reduce(:+)
  return true if number == factorials_sum
  return false
end

sum = 0

(10..99999).each do |n|
  sum += n if curious?(n)
end

puts sum
