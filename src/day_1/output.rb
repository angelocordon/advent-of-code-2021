#!/usr/bin/env ruby
require './lib/depth_calculator'

file_path        = File.expand_path('./input.txt', __dir__)
input            = File.read(file_path)
depth_reports    = input.split("\n").map(&:to_i)

Part_1 = DepthCalculator.calculate_depth_increase(depth_reports)

p "Part 1: #{Part_1.increase}"

Part_2 = DepthCalculator.calculate_depth_increase_from_window(depth_reports)
p "Part 2: #{Part_2.increase}"
