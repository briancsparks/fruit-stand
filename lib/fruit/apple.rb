module Fruit

  class Apple
    attr_reader :variety

    def initialize(variety = "Granny Smith")
      @variety = variety
      @birthday = Time.now
      @slices = Array.new(8)
    end

    def slice(count=1)
      @slices.pop(count).length
    end

    def remaining_slices
      @slices.length
    end

    def ripe?
      age > self.class.age_when_ripe
    end

    def unripe?
      !ripe?
    end

    def age
      Time.now - @birthday
    end

    def self.age_when_ripe
      10
    end

  end

end
