a,b,c,d = gets.strip.split(' ').map(&:to_i)

first = a * b
second = c * d

if first >= second
  puts first
else
  puts second
end
