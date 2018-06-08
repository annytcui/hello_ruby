# What is the total of all the name scores in the file?

# Solution #1
alphabetical_value = { "a" => 1, "b" => 2, "c" => 3, "d" => 4,
      "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9,
      "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14,
      "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19,
      "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24,
      "y" => 25, "z" => 26}

names =[]
File.open("p022_names.txt").each do |content|
  names = content.gsub!('"','').split(",").sort_by!{ |name| name.downcase }
end
puts names.length

sum = 0
names.each do |name|
  value = 0
  name.downcase.split("").each do |letter|
    value += alphabetical_value[letter].to_i
  end
  name_scores = value * (names.index(name) + 1)
  sum += name_scores
end

puts sum

=begin
# Solution #2
def name_score(name)
  name.enum_for(:each_byte).map { |b| b - 64 } \
    .inject { |agg, n| agg + n }
end

text = File.open("p022_names.txt").gets
names = text.gsub!('"', '').split(",").sort

puts names.enum_for(:each_with_index).map { |name, index|
    name_score(name) * (index + 1)  }.inject { |agg, n|
    agg + n }


# Solution #3
def name_score(name)
  sum = 0
  name.each_byte { |b| sum += b - 64 }
  sum
end

text = File.open("p022_names.txt").gets
names = text.gsub!('"', '').split(",").sort

total = 0
names.each_with_index { |name, index|
  total += name_score(name) * (index + 1) }
puts total
=end
