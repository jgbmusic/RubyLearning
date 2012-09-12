class Shape
  attr_reader :sound_file_name

  def initialize(name = self.class.to_s.downcase)
    @name = name
    @sound_file_name = self.class.to_s
    if self.class == Amoeba
      @sound_file_name &lt;&lt; '.hif'
    else
      @sound_file_name &lt;&lt; '.aif'
    end
  end

  def play_sound
    "Playing #{@sound_file_name} for #{@name}."
  end

  def rotate
    "Rotating clockwise about the center of the #{@name} by 360 degrees."
  end

  def click
    puts "#{@name} is clicked."
    puts play_sound
    puts rotate
  end

end

class Square &lt; Shape
end

class Circle &lt; Shape
  def rotate
    "A rotating circle is imperceptible."
  end
end

class Amoeba &lt; Shape
  def rotate
    "The amoeba is rotating clockwise 360 degrees, about a point on the edge."
  end
end

class Triangle &lt; Shape
end

s = Square.new
c = Circle.new('circle') 
t = Triangle.new('3 sided shape')
a = Amoeba.new('amoeba')
odd = Shape.new

s.click
puts
c.click
puts
t.click
puts
a.click
puts 
odd.click