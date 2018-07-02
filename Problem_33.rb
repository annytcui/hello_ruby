# Project Euler -> Problem 33

def is_right_fraction?(n, d)
  value = Float(n) / Float(d)
  return false if n % 10 == 0 && d % 10 == 0

  n = n.to_s
  d = d.to_s
  if n[0] == d[1]
    return true if value == Float(n[1]) / Float(d[0])
  elsif n[1] == d[0] && d[1] != "0"
    return true if value == Float(n[0]) / Float(d[1])
  end
  return false
end

fractions = []

(11..99).each do |denominator|
  (10..(denominator-1)).each do |numerator|
    fractions << [numerator, denominator] if is_right_fraction?(numerator, denominator)
  end
end

a, b = 1, 1
(0..3).each do |i|
  a *= fractions[i][0]
  b *= fractions[i][1]
end

puts b / a
