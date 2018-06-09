# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
=begin
# Solution #1
def digits(number)
  number.to_s.length
end

sequence = { 1 => 1, 2 => 1}
i = 2
while digits(sequence[i]) < 1000
  i += 1
  sequence[i] = sequence[i-1] + sequence[i-2]
end

puts i
puts sequence[i]
=end

# Solution #2
index = 1
a = 1
b = 1
while a.to_s.length < 1000
  index += 1
  a, b = b, a + b
end

puts index
