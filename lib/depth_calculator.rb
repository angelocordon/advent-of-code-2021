class DepthCalculator
  def self.calculate_depth_increase(reported_depths = [])
    return 0 if reported_depths.empty?

    increase = 0

    reported_depths.each_with_index do |depth, index|
      next if index.zero?

      increase += 1 if depth > reported_depths[index - 1]
    end

    increase
  end
end
