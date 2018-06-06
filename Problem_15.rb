# Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20x20 grid?

steps = (1..40).to_a
# puts routes = steps.combination(20).to_a.length

numerator = steps[-20..-1].reduce(:*)
denominator = steps[0, 20].reduce(:*)
routes = numerator / denominator

puts routes
