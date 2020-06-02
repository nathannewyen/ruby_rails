# Create a file mammal.rb. In this file, create a Mammal Class. A mammal should have a default health attribute with value of 150. Also add a method called display_health, which when invoked, prints the health of the Mammal.
# In a separate file (dog.rb) create a class called Dog that inherits from the Mammal class and do the following:

class Mammal
  attr_accessor :health
  def initialize
    @health = 150
  end

  def display_health
    puts @health
  end
end

class Mammal_Lion
  attr_accessor :health
  def initialize
    @health = 170
  end

  def display_health
    puts 'This is a lion'
    puts @health
  end
end