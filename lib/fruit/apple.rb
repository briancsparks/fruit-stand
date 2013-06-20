module Fruit

  class Apple
    attr_reader :variety

    def initialize(variety = "Granny Smith")
      @variety = variety
      @slices = 'a' * 8
    end

    def slice(count=1)
      slices_to_give = count
      if slices_to_give > @slices.length
        slices_to_give = @slices.length
      end

      @slices = 'a' * (@slices.length - slices_to_give)
      slices_to_give
    end

    def remaining_slices
      @slices.length
    end

  end

end
