#!/usr/bin/env ruby
require './lib/position_calculator'

file_path = File.expand_path('./input.txt', __dir__)
input = File.read(file_path)

position_product = PositionCalculator.new(input).final_product
p "Position Product: #{position_product}"
