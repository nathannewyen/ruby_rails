class Wizard
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize
        @strength = strength
        @intelligence = 25
        @stealth = stealth
        @health = 50
    end
    def heal
        @health += 10
    end

    def fireball(obj)
        if obj.class.ancestors.include?(Wizard)
        obj.health -= 20
        true
        else
        false
        end
    end

end