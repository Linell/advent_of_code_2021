# frozen_string_literal: true
module Year2020
  class Day01
    def part_1(input)
      entries = input.split.map(&:to_i)
      results = entries.each_with_object({}) do |entry, entry_sums|
        entry_sums[entry] = entries.each_with_object({}) do |n, m|
          m[n] = entry + n
        end
      end.detect do |_val, possible_matches|
        possible_matches.values.include?(2020)
      end

      puts "#{results[0]} * #{results[1].find {|k,v| v == 2020 }[0]}"
      results[0] * results[1].find {|k,v| v == 2020 }[0]
    end

    def part_2(input)
      nil
    end
  end
end
