class Human
    attr_accessor :name, :strength, :intelligence, :stealth, :health
    def initialize
        @name = name
        @strength = strength
        @intelligence = intelligence
        @stealth = stealth
        @health = 100
    end

    def attack(person)
        if person.class.ancestors.include?(Human)
            person.health -= 10
            true
        else
            false
        end
    end

    def display_infomation
        puts "#{self.name} Streng is : #{self.strength}"
        puts "#{self.name} Intelligence is : #{self.intelligence}"
        puts "#{self.name} Stealth is : #{self.stealth}"
        puts "#{self.name} Health is : #{self.health}"
    end

end

human1 = Human.new
human1.name = "Yo" 
human1.strength = 50
human1.intelligence = 50
human1.stealth = 30

human2 = Human.new
human2.name = "Hey"
human2.strength = 30
human2.intelligence = 50
human2.stealth = 30


human1.attack(human2)
human2.display_infomation
