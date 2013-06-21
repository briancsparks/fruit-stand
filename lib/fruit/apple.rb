module Fruit

  class Apple
    attr_reader :variety

    def initialize(variety = "Granny Smith")
      @variety = variety
      @slices = Array.new(8)
    end

    def slice(count=1)
      @slices.pop(count).length
    end

    def remaining_slices
      @slices.length
    end

  end

end
