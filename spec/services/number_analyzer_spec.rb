# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NumberAnalyzer do
  describe '.total_inc_dec' do
    it 'returns the correct results for small values of x' do
      expect(NumberAnalyzer.total_inc_dec(0)).to eq(1)
      expect(NumberAnalyzer.total_inc_dec(1)).to eq(10)
      expect(NumberAnalyzer.total_inc_dec(2)).to eq(100)
      expect(NumberAnalyzer.total_inc_dec(3)).to eq(475)
      expect(NumberAnalyzer.total_inc_dec(4)).to eq(1675)
      expect(NumberAnalyzer.total_inc_dec(5)).to eq(4954)
      expect(NumberAnalyzer.total_inc_dec(6)).to eq(12_952)
    end
  end
end
