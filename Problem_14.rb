class Integer

  def collatz_length
    value = self

    return value if value <= 1

    length = 0
    while value != 1
      if value % 2 == 0
        value /= 2
      else
        value = (value * 3) + 1
      end
      length += 1
    end
    length
  end
end

t1 = Time.now
number = 1
chain = 0
1.upto(1_000_000) {
  |n| new_chain = n.collatz_length
  number, chain = n, new_chain if chain < new_chain
}

puts number, chain
t2 = Time.now
puts "Elapsed time: #{t2 - t1} seconds"
