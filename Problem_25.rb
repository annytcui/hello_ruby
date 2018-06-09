# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

def digits(number)
  number.to_s.split("").length
end

sequence = { 1 => 1, 2 => 1}
i = 2
while digits(sequence[i]) < 1000
  i += 1
  sequence[i] = sequence[i-1] + sequence[i-2]
end

puts i
puts sequence[i]
