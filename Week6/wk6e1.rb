class Person
  def initialize(balance)
    @balance = balance
  end
  attr_reader :balance
end

bob = Person.new(5)
puts bob.balance
