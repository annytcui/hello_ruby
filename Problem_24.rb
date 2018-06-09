# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

# Solution #1
# puts (0..9).to_a.permutation.sort[999999].join

# Solution #2
permutations = []
(0..9).each do |a|
  ((0..9).to_a - [a]).each do |b|
    ((0..9).to_a - [a, b]).each do |c|
      ((0..9).to_a - [a, b, c]).each do |d|
        ((0..9).to_a - [a, b, c, d]).each do |e|
          ((0..9).to_a - [a, b, c, d, e]).each do |f|
            ((0..9).to_a - [a, b, c, d, e, f]).each do |g|
              ((0..9).to_a - [a, b, c, d, e, f, g]).each do |h|
                ((0..9).to_a - [a, b, c, d, e, f, g, h]).each do |i|
                  ((0..9).to_a - [a, b, c, d, e, f, g, h, i]).each do |j|
                    p = [a, b, c, d, e, f, g, h, i, j]
                    permutations.push(p)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
puts permutations[999999].join
