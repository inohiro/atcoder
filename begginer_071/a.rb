x, a, b = gets.split(' ').map(&:to_i)

diff_a = (x - a) ** 2
diff_b = (x - b) ** 2

if diff_a < diff_b
  puts 'A'
else
  puts 'B'
end
