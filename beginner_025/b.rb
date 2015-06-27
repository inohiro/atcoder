
n, a, b = gets.split.map(&:to_i)

east, west = 0, 0

n.times {
  s, d = gets.split
  d = d.to_i

  if d < a
    s == 'East' ? east += a : west += a
  elsif a <= d && d <= b
    s == 'East' ? east += d : west += d
  elsif b < d
    s == 'East' ? east += b : west += b
  end
}

if east == west
  puts '0'
elsif east < west
  position = west - east
  puts "West #{position}"
else # east.length > west.length
  position = east - west
  puts "East #{position}"
end
