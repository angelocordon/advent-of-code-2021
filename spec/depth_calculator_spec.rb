require 'depth_calculator'

RSpec.describe 'Depth Calculator' do
  describe '.calculate_depth_increases' do
    it 'returns 0 if depth report is blank' do
      report = []
      calculated_depth = DepthCalculator.calculate_depth_increase(report)

      expect(calculated_depth.increase).to eq 0
    end

    it 'returns the number of times the depth increases' do
      report = [
        199,
        200,
        208,
        210,
        200,
        207,
        240,
        269,
        260,
        263
      ]
      calculated_depth = DepthCalculator.calculate_depth_increase(report)

      expect(calculated_depth.increase).to eq 7
    end
  end

  describe '.depth_increases_from_window' do
    it 'calculates the depth increases with three-measurement windows' do
      report = [
        199,
        200,
        208,
        210,
        200,
        207,
        240,
        269,
        260,
        263
      ]
      calculated_depth = DepthCalculator
                          .calculate_depth_increase_from_window(report)

      expect(calculated_depth.increase).to eq 5
    end
  end
end
