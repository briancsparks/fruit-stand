require 'spec_helper'

describe Fruit::Apple do

  describe '#ripe?' do

    context "at first (initially)" do
      it "is false" do
        expect(subject.ripe?).to be_false
      end
    end

    context "when less than 10 seconds old" do
      it "is not ripe" do
        expect(subject.ripe?).to be_false
        subject.stub(:age).and_return(9)
        expect(subject.ripe?).to be_false
        expect(subject).not_to be_ripe
      end
    end

    context "when more than 10 seconds old" do
      it "is ripe" do
        expect(subject.ripe?).to be_false
        subject.stub(:age).and_return(11)
        expect(subject.ripe?).to be_true
        expect(subject).to be_ripe
      end
    end

  end

  describe "#initialize" do
    context "when given no parameters" do
      it "variety is 'Granny Smith'" do
        expect(subject.variety).to eq "Granny Smith"
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
        expect(subject.slice).to eq 1
      end

      it "reports the correct number of remaining slices" do
        subject.slice
        expect(subject.remaining_slices).to eq 7
      end
    end

    context "when given a number of slices parameter" do
      it "returns the correct number of slices" do
        expect(subject.slice 2).to eq 2
      end
      
      it "reports the correct number of remaining slices" do
        subject.slice 2
        expect(subject.remaining_slices).to eq 6
      end
    end

    context "when given a number of slices parameter greater than the remaining slices" do
      it "returns the all of the remaining slices" do
        expect(subject.slice 10).to eq 8
      end

      it "returns the correct number of remaining slices" do
        subject.slice 10
        expect(subject.remaining_slices).to eq 0
      end
    end
  end

end
