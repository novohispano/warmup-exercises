require "spec_helper"
require "say"

describe Say do
  context "when given a number" do
    it "says zero" do
      expect(Say.new(0).in_english).to eq "zero"
    end

    it "says two" do
      expect(Say.new(2).in_english).to eq "two"
    end

    it "says ten" do
      expect(Say.new(10).in_english).to eq "ten"
    end

    it "says twenty" do
      expect(Say.new(20).in_english).to eq "twenty"
    end

    it "says twenty-five" do
      expect(Say.new(25).in_english).to eq "twenty-five"
    end
  end
end