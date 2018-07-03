# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

require 'set'

def is_pandigital?(multiplicand, multiplier)
  product = multiplicand * multiplier
  string = multiplicand.to_s + multiplier.to_s + product.to_s
  return false if string.length != 9
  return true if string.split(//).sort.join == "123456789"
  return false
end

products = Set.new

(0..9999).each do |a|
  (0..9999).each do |b|
    products << a*b if is_pandigital?(a, b)
  end
end

puts products.inject(0) { |sum, num| sum + num }
