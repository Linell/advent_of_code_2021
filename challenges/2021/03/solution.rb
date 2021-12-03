# frozen_string_literal: true
module Year2021
  class Day03
    def part_1(input)
      diagnostics = input.split("\n").map(&:chars)
      gamma_rate_bits = []
      epsilon_rate_bits = []

      diagnostics.first.length.times do |i|
        column_vals  = diagnostics.map {|r| r[i].to_i }
        most_common  = column_vals.count(0) > column_vals.count(1) ? 0 : 1
        least_common = most_common == 0 ? 1 : 0

        gamma_rate_bits   << most_common
        epsilon_rate_bits << least_common
      end

      gamma_rate = gamma_rate_bits.join.to_i(2)
      epsilon_rate = epsilon_rate_bits.join.to_i(2)

      gamma_rate * epsilon_rate
    end

    # TODO: this code is not great lol
    def part_2(input)
      diagnostics = input.split("\n").map(&:chars)

      oxygen_gen_rating = diagnostics
      co2_scrubber_rating = diagnostics

      oxygen_gen_rating.first.length.times do |i|
        next if oxygen_gen_rating.length == 1
        column_vals  = oxygen_gen_rating.map {|r| r[i].to_i }
        zeros = column_vals.count(0)
        ones = column_vals.count(1)
        
        if zeros == ones
          most_common = 1
          least_common = 0
        elsif zeros > ones
          most_common = 0
          least_common = 1
        else
          most_common = 1
          least_common = 0
        end

        oxygen_gen_rating = oxygen_gen_rating.select {|r| r[i].to_i == most_common }
      end

      co2_scrubber_rating.first.length.times do |i|
        next if co2_scrubber_rating.length == 1
        column_vals = co2_scrubber_rating.map {|r| r[i].to_i }
        zeros = column_vals.count(0)
        ones = column_vals.count(1)
        
        if zeros == ones
          most_common = 1
          least_common = 0
        elsif zeros > ones
          most_common = 0
          least_common = 1
        else
          most_common = 1
          least_common = 0
        end

        co2_scrubber_rating = co2_scrubber_rating.select {|r| r[i].to_i == least_common }
      end

      oxygen_gen_rating = oxygen_gen_rating.first.join.to_i(2)
      co2_scrubber_rating = co2_scrubber_rating.first.join.to_i(2)

      oxygen_gen_rating * co2_scrubber_rating
    end
  end
end
