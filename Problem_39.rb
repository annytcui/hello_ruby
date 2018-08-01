# Project Euler Problem 39

count = Hash.new(0)

(1..500).each do |a|
  (a+1..500).each do |b|
    (b+1..500).each do |c|
      break if a + b + c > 1000
      if a**2 + b**2 == c**2
        count[a+b+c] += 1
      end
    end
  end
end

puts count.max_by { |k, v| v }[0]
