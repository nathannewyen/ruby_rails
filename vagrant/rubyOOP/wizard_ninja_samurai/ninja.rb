class Ninja
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize
        @strength = strength
        @intelligence = intelligence
        @stealth = 175
        @health = health
    end

    def stealth(obj)
        if obj.class.ancestors.include?(Ninja)
            @health += 10
            true
        else
            false
        end
    end

    def get_away
        @health -= 15
    end

end