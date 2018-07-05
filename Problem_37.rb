# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

require 'prime'

def truncatable?(prime)
  a = prime.to_s.chars.to_a
  (a.length-1).times do
    a.shift
    return false if !(a.join.to_i.prime?)
  end

  b = prime.to_s.chars.to_a
  (b.length-1).times do
    b.pop
    return false if !(b.join.to_i.prime?)
  end

  return true
end

t_primes = []
Prime.each do |prime|
  next if prime.to_s.length == 1
  t_primes << prime if truncatable?(prime)
  break if t_primes.length == 11
end

puts t_primes.inject { |agg, n| agg + n }
