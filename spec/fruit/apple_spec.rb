require 'spec_helper'


describe "Apple" do

  describe "#initialize" do
    context "when given no parameters" do
      it "variety is 'Granny Smith'" do
        apple = Fruit::Apple.new
        expect(apple.variety).to eq "Granny Smith"
      end
    end

    context "when given a variety parameter" do
      it "variety is the specified variety" do
        apple = Fruit::Apple.new "Pink Lady"
        expect(apple.variety).to eq "Pink Lady"
      end
    end
  end

  describe "#slice" do
    context "when given no parameters" do
      it "returns removes one slice of the apple" do
        apple = Fruit::Apple.new
        expect(apple.slice).to eq 1
      end

      it "reports the correct number of remaining slices" do
        apple = Fruit::Apple.new
        apple.slice
        expect(apple.remaining_slices).to eq 7
      end
    end

    context "when given a number of slices parameter" do
      it "returns the correct number of slices" do
        # TODO: Write this test
      end

      it "reports the correct number of remaining slices" do
        # TODO: Write this test
      end
    end

    context "when given a number of slices parameter greater than the remaining slices" do
      it "returns the number of remaining slices" do
        # TODO: Write this test
      end

      it "returns the correct number of remaining slices" do
        # TODO: Write this test
      end
    end
  end

end