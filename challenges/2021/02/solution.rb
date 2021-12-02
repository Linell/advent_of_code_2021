# frozen_string_literal: true
module Year2021
  class Day02
    def part_1(input)
      measurements = input.split("\n").map(&:split)

      horizontal_position = 0
      depth = 0

      measurements.each do |direction, magnitude|
        case direction
        when 'forward'
          horizontal_position += magnitude.to_i
        when 'down'
          depth += magnitude.to_i
        when 'up'
          depth -= magnitude.to_i
        end
      end

      horizontal_position * depth
    end

    def part_2(input)
      measurements = input.split("\n").map(&:split)

      horizontal_position = 0
      depth = 0
      aim = 0

      measurements.each do |direction, magnitude|
        case direction
        when 'forward'
          horizontal_position += magnitude.to_i
          depth += aim * magnitude.to_i
        when 'down'
          aim += magnitude.to_i
        when 'up'
          aim -= magnitude.to_i
        end
      end

      horizontal_position * depth
    end
  end
end
