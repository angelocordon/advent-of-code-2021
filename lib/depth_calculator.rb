class DepthCalculator
  attr_reader :depth_report, :increase

  def self.calculate_depth_increase(depth_report = [])
    new(depth_report).calculate_depth_increase
  end

  def self.calculate_depth_increase_from_window(depth_report = [])
    new(depth_report).calculate_increases_from_window
  end

  def initialize(depth_report)
    @depth_report = depth_report
    @increase = 0
  end

  def calculate_depth_increase
    depth_report.each_with_index do |depth, index|
      next if index.zero?

      add_increase_count if depth > depth_report[index - 1]
    end

    self
  end

  def calculate_increases_from_window
    depth_report.each_cons(4) do |a, b, c, d|
      add_increase_count if (a + b + c) < (b + c + d)
    end

    self
  end

  private

  def add_increase_count
    @increase = increase + 1
  end
end
