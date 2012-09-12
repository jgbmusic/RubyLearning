class Dog
  def initialize (name)
    @name = name
  end

  def bark
    "#{@name} says Woof!"
  end

  def eat
    'I want steak!'
  end

  def chase_cat
    'There goes a cat!'
  end

  def teach_trick (trick_name)
    block_given? ? yield : puts( "no block" )
  end


end

d = Dog.new('Leo')
d2 = Dog.new('Fido')
puts d.bark
puts d.eat
puts d.chase_cat

@name = d.instance_variable_get("@name")
d.teach_trick(:dance) { puts "#{@name} is gettin' jiggy widdit!" }

