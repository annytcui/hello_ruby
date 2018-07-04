# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

def decimal_to_binary(num, i=0)
  product = (num % 2) * 10**i
  return product if num < 1
  product + decimal_to_binary(num/2, i+1)
end

def palindromic?(num)
  return true if num == num.to_s.reverse.to_i
end

def double_base_palindromic?(decimal)
  binary = decimal_to_binary(decimal)
  if palindromic?(decimal) && palindromic?(binary)
    return true
  end
  false
end

sum = 0
(1..999999).each do |n|
  sum += n if double_base_palindromic?(n)
end

puts sum
