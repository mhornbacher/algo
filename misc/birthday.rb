candle_count = gets.strip.to_i
heights = gets.strip.split(" ").map(&:to_i)

highest_candle = heights.max

puts heights.inject(0){ |sum, height| height == highest_candle ? sum + 1 : sum }