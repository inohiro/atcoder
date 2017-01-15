x = 0
status = []

n = gets
s = gets.strip.split('')

s.each do |i|
  if i == 'I'
    x += 1
  else
    x -= 1
  end
  status << x
end

puts (status.max >= 0 ? status.max : 0)
