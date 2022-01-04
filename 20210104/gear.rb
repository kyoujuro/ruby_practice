class Gear
  
    attr_reader :chainring, :cog
    def initialize(chainring, cog)
        @chainring = chainring
        @cog = cog
    end

    def gear(product='')
        puts "#{product} gear's ratio is #{ratio}."
    end

    private
    def ratio
        chainring / cog.to_f
    end

end

gear = Gear.new(10, 5)

puts gear.gear('bike')

class Rader < Gear
    def gear(product = 'rader')
        super
    end
end

rader = Rader.new(10, 30)
puts rader.gear