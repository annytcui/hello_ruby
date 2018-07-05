# What is the large 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?

def nine_pandigital?(num)
  return true if num.to_s.chars.to_a.sort.join == "123456789"
  return false
end

def concatenated_product(i, n)
  product = ""
  (1..n).each do |m|
    product += (i*m).to_s
  end
  product.to_i
end

max = 0

(1..99999).each do |i|
  (2..9).each do |n|
    product = concatenated_product(i, n)
    next if product < max
    break if product.to_s.length > 9
    max = product if nine_pandigital?(product)
  end
end

puts max
