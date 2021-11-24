# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Year2020::Day01 do
  let(:puzzle) { Year2020::Day01.new }
  let(:input) { File.read(File.join(File.dirname(__FILE__), "../../../challenges/2020/01/input.txt")) }
  let(:example_input) {
    <<~EOF
    1721
    979
    366
    299
    675
    1456
    EOF
  }

  describe "part 1" do
    it "returns 514579 for the example input" do
      expect(puzzle.part_1(example_input)).to eq(514579)
    end
  end

  describe "part 2" do
    it "returns nil for the example input" do
      expect(puzzle.part_2(example_input)).to eq(nil)
    end

    it "returns nil for my input" do
      expect(puzzle.part_2(input)).to eq(nil)
    end
  end
end
