require "spec_helper"

describe "Say" do
  context "when given a set of numbers" do
    it "accepts a number" do
      output = Chunk.new(1).split
      expect(output).to eq [0, 0, 0, 1]
    end

    it "splits three digits" do
     output = Chunk.new(123).split
     expect(output).to eq [0, 0, 0, 123]
    end

    it "splits six digits" do
     output = Chunk.new(123456).split
     expect(output).to eq [0, 0, 123, 456]
    end

    it "splits nine digits" do
     output = Chunk.new(123456789).split
     expect(output).to eq [0, 123, 456, 789]
    end
  end
end