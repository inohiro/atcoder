n = gets.strip.to_i

sum = 0
(0..n-1).each do |index|
  l, r = gets.strip.split(' ').map(&:to_i)
  sum += (r - l + 1)
end

puts sum
