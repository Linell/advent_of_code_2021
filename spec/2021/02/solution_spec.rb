# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Year2021::Day02 do
  let(:puzzle) { Year2021::Day02.new }
  let(:input) { File.read(File.join(File.dirname(__FILE__), "../../../challenges/2021/02/input.txt")) }
  let(:example_input) {
    <<~EOF
    forward 5
    down 5
    forward 8
    up 3
    down 8
    forward 2
    EOF
  }

  describe "part 1" do
    it "returns nil for the example input" do
      expect(puzzle.part_1(example_input)).to eq(150)
    end
  end

  describe "part 2" do
    it "returns nil for the example input" do
      expect(puzzle.part_2(example_input)).to eq(900)
    end
  end
end
