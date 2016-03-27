line = gets
W, H = line.split.map(&:to_i)

if (W % 16 == 0) && (H % 9 == 0)
  puts '16:9'
elsif (W % 4 == 0) && (H % 3 == 0)
  puts '4:3'
end
