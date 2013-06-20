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
        apple = Fruit::Apple.new
        expect(apple.slice 2).to eq 2
      end
      
      it "reports the correct number of remaining slices" do
        apple = Fruit::Apple.new
        apple.slice 2
        expect(apple.remaining_slices).to eq 6
      end
    end

    context "when given a number of slices parameter greater than the remaining slices" do
      it "returns the all of the remaining slices" do
        apple = Fruit::Apple.new
        expect(apple.slice 10).to eq 8
      end

      it "returns the correct number of remaining slices" do
        apple = Fruit::Apple.new
        apple.slice 10
        expect(apple.remaining_slices).to eq 0
      end
    end
  end

end
