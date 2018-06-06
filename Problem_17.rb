# Project Euler Problem 17

class Integer
  def to_word
    raise ArgumentError, "Integer must be between 1 and " \
    "1000" unless self.between?(1, 1000)

    lib = { 1 => "one", 2 => "two", 3 => "three",
        4 => "four", 5 => "five", 6 => "six",
        7 => "seven", 8 => "eight", 9 => "nine",
        10 => "ten", 11 => "eleven", 12 => "twelve",
        13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
        16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
        19 => "nineteen", 20 => "twenty", 30 => "thirty",
        40 => "forty", 50 => "fifty", 60 => "sixty",
        70 => "seventy", 80 => "eighty", 90 => "ninety" }

    n = self.to_s.reverse.split("").to_a.map { |i| i.to_i }

    word = ""
    if (n[3] != nil and n[3] != 0)
      word = lib[n[3]] + " thousand"
    end

    if (n[2] != nil and n[2] != 0)
      word += lib[n[2]] + " hundred"

      if (n[1] != nil and n[1] != 0)
        word += " and"
      elsif (n[0] != nil and n[0] != 0)
        word += " and"
      end
    end

    t = 99
    if (n[1] != nil and n[1] != 0)
      t = n[1] * 10 + n[0]
      if t <= 20
        word += lib[t]
      else
        word += lib[(n[1] * 10)]
      end
    end

    if (n[0] != nil and n[0] != 0 and t > 20)
      word += lib[n[0]]
    end

    word.strip
  end

  def to_word_length
    self.to_word.gsub(/ /, '').length
  end
end

puts (1..1000).inject(0) { |sum, i| sum + i.to_word_length  }
