# frozen_string_literal: true

class NumberAnalyzer
  def self.total_inc_dec(power_digit)
    return 1 if power_digit.zero?

    limit = 10**power_digit
    comb_count = 0

    (1..limit).each do |num|
      comb_count += 1 if check_inc_dec(num)
    end

    comb_count
  end

  def self.check_inc_dec(num)
    digits = num.to_s.chars.map(&:to_i)

    increasing = true
    decreasing = true

    (1...digits.length).each do |i|
      if digits[i] < digits[i - 1]
        increasing = false
      elsif digits[i] > digits[i - 1]
        decreasing = false
      end

      break if !increasing && !decreasing
    end

    increasing || decreasing
  end
end
