# Coderbyte challenge -> LongestWord
def LongestWord(sen)
  array = sen.split.map do |word|
    /[a-zA-Z0-9\s]+/.match(word)
  end

  longest = array.max_by do |word|
    word.to_s.length
  end

  return longest
end

puts LongestWord("Hello, ruby!")
