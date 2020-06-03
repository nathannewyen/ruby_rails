class Samurai
    @@no_of_samurais = 0
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize
        @@no_of_samurais += 1
        @strength = strength
        @intelligence = intelligence
        @stealth = stealth
        @health = 200
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Samurai)
            obj.health = 0
            true
        else
            false
        end
    end

    def meditate
        @health = 200
    end

    def how_many
        puts @@no_of_samurais
    end

end
