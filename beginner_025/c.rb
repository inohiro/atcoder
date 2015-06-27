
b11, b12, b13 = gets.split.map(&:to_i)
b21, b22, b23 = gets.split.map(&:to_i)

cs = []

(1..3).each do |index|
  c1, c2 = gets.split.map(&:to_i)
  cs << { index: index, values: [c1, c2] }
end


require 'pp'
pp cs
