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
      depth_measurements = input.split.map(&:to_i)
      results = depth_measurements.each_with_index.inject({
        decrease: 0,
        last_total: nil
      }) do |totals, (measurements, index)|
        unless (index + 2) > (depth_measurements.length - 1)
          band = [index, index + 1, index + 2].map {|idx| depth_measurements[idx] }
          sum = band.sum

          if !totals[:last_total].nil? && totals[:last_total] < sum
            totals[:decrease] = totals[:decrease].next
          end

          totals[:last_total] = sum
        end
        totals
      end

      results[:decrease]
    end
  end
end
