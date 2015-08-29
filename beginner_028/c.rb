def main
  inputs = gets.split.map(&:to_i)
  puts inputs.combination(3).map {|a, b, c| a + b + c}.sort[-3]
end

main
