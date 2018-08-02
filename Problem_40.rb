# Project Euler Problem 40

c = ""
n = 0
while c.length < 1_000_000
  n += 1
  c += n.to_s
end

puts (c[0].to_i) * (c[9].to_i) * (c[99].to_i) * (c[999].to_i) * (c[9999].to_i) * (c[99999].to_i) * (c[999999].to_i)
