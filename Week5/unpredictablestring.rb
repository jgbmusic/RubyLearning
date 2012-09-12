class Unpredictable < String

  def scramble(scramble_this)
      scramble_this.split(//).sample(scramble_this.length).join
  end
    
  def scramble2(scramble_this)
      scramble_this.split(//).shuffle.join
  end

end

puts "Type a string: "
a = gets().chomp

b = Unpredictable.new

puts b.scramble(a)

puts b.scramble2(a)

