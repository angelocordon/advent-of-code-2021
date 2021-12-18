require 'depth_calculator'

RSpec.describe 'Depth Calculator' do
  describe '.calculate_depth_increases' do
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

      expect{ DepthCalculator.calculate_depth(report)}).to eq 7
    end
  end
end
