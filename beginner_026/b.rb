
n = gets.strip.to_i

rows = []

n.times {
  rows << gets.strip.to_i
}

sum = 0

rows.sort.reverse.each_with_index { |e, index|
  if index % 2 == 0
    sum += e * e
  else
    sum -= e * e
  end
}

include Math
puts sum * Math::PI
