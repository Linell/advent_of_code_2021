# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Year2021::Day01 do
  let(:puzzle) { Year2021::Day01.new }
  let(:input) { File.read(File.join(File.dirname(__FILE__), "../../../challenges/2021/01/input.txt")) }
  let(:example_input) {
    <<~EOF
    199
    200
    208
    210
    200
    207
    240
    269
    260
    263
    EOF
  }

  describe "part 1" do
    it "returns nil for the example input" do
      expect(puzzle.part_1(example_input)).to eq(7)
    end
  end

  describe "part 2" do
    it "returns nil for the example input" do
      expect(puzzle.part_2(example_input)).to eq(5)
    end
  end
end
