require_relative 'mammal'
class Human < Mammal
  puts 'I am in the human file'
end
human = Human.new