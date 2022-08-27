class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def eat(food=nil)
    "come #{food}"
  end

end
