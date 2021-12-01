# frozen_string_literal: true
module Year2021
  class Day01
    def part_1(input)
      depth_measurements = input.split.map(&:to_i)
      measurements = depth_measurements.inject({
        decrease: 0,
        last_measurement: nil
      }) do |totals, measurement|
        if totals[:last_measurement].nil?
          totals[:last_measurement] = measurement
        else
          if totals[:last_measurement] < measurement
            totals[:decrease] = totals[:decrease].next
          end

          totals[:last_measurement] = measurement
        end

        totals
      end

      measurements[:decrease]
    end

    def part_2(input)
      nil
    end
  end
end
