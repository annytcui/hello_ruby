# How many circular primes are there below one million?

def is_prime?(num)
  return false if num <= 1
  Math.sqrt(num).floor.downto(2).each do |i|
    return false if num % i == 0
  end
  true
end

count = 0
(2..1_000_000).each do |n|
  index = n.to_s.length - 1
  bool = true
  (0..index).each do |j|
    num = n.to_s.split(//).rotate(j).join.to_i
    if (!is_prime?(num))
      bool = false
      break
    end
  end
  count += 1 if bool == true
end

puts count
