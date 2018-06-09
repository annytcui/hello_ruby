# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def abundant_number?(number)
  divisors_sum = 1
  (2..Math.sqrt(number)).each do |i|
    if number % i == 0
      divisors_sum += i + (number / i)
      if i == (number / i)
        divisors_sum -= i
      end
    end
  end
  number < divisors_sum
end

abundant_numbers = []
(2..28123).each do |i|
  abundant_numbers.push(i) if abundant_number?(i)
end

all_numbers = (1..28123).to_a
numbers = []

while abundant_numbers.length > 1
  n = abundant_numbers[0]
  abundant_numbers.each { |number|
      numbers.push(n+number) if n + number <= 28123 }
  abundant_numbers.shift
end

puts (all_numbers - numbers).inject(0) { |agg, n| agg + n }
