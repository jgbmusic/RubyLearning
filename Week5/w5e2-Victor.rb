class Shape
  attr_reader :sound_file_name

  def initialize(name = self.class.to_s.downcase)
    @name = name || self.class.to_s
    @sound_file_name = self.sound_file_name || 'generic_shape.aif'
    @deg2rotate = '360'
  end

  def play_sound
    "Playing #{@sound_file_name} for #{@name}."
  end

  def rotate
    "Rotating clockwise #{@deg2rotate} degrees."
  end

  def click
    puts "#{@name} is clicked."
    puts play_sound
    puts rotate
  end
end

class Square < Shape

end

class Circle < Shape
  def rotate
    "A rotating circle is imperceptible."
  end
end

class Triangle < Shape

end

s = Square.new
c = Circle.new('circle')
t = Triangle.new('3 sided shape')
amoeba = Shape.new('strange shape')

s.click
puts
c.click
puts
t.click
puts
amoeba.click
