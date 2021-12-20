require 'position_calculator'

RSpec.describe PositionCalculator do
  let(:directions) do
    <<~RAW_DIRECTIONS
      forward 5
      down 5
      forward 8
      up 3
      down 8
      forward 2
    RAW_DIRECTIONS
  end

  describe '#depth_po' do
    it 'outputs the current depth after instructions' do
      depth = PositionCalculator.new(directions).depth_pos

      expect(depth).to eq 60
    end
  end

  describe '#horizontal_pos' do
    it 'outputs the current horizontal position after instructions' do
      horizontal_pos = PositionCalculator.new(directions).horizontal_pos

      expect(horizontal_pos).to eq 15
    end
  end

  describe '#final_product' do
    it 'outputs the product of the horizontal and depth positions' do
      product = PositionCalculator.new(directions).final_product

      expect(product).to eq 900
    end
  end
end
