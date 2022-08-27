# class Lion
#   attr_reader :name

#   def initialize(name)
#     @name = @name
#   end

#   def sound
#     "rugir"
#   end
# end

require_relative "animal"

class Lion < Animal

  def sound
    "#{@name} emite rugidos"
  end

  def eat(food=nil)
    super(food)
  end

end
