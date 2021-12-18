require 'depth_calculator'

RSpec.describe 'Depth Calculator' do
  describe '.calculate_depth_increases' do
    it 'returns 0 if depth report is blank' do
      report = []
      depth_increase = DepthCalculator.calculate_depth_increase(report)
      expect(depth_increase).to eq 0
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
      depth_increase = DepthCalculator.calculate_depth_increase(report)

      expect(depth_increase).to eq 7
    end
  end
end
