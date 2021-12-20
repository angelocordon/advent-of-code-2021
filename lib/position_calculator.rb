class PositionCalculator
  attr_reader :depth_pos, :horizontal_pos

  def initialize(instructions)
    @instructions = parse_instructions(instructions)
    @horizontal_pos = 0
    @depth_pos = 0
    @aim = 0

    calculate_final_positions
  end

  def final_product
    horizontal_pos * depth_pos
  end

  private

  def parse_instructions(raw_format)
    raw_format.split("\n").map do |step|
      Hash[*step.split]
    end
  end

  def calculate_final_positions
    @instructions.each do |step|
      step.each_key do |direction|
        send(direction, step[direction].to_i)
      end
    end
  end

  def forward(value)
    @horizontal_pos += value
    @depth_pos += (@aim * value)
  end

  def up(value)
    @aim -= value
  end

  def down(value)
    @aim += value
  end
end
