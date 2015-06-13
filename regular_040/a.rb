

n = gets.strip.to_i

rows = []
rs = 0
bs = 0

n.times do |i|
  #   rows << gets.strip.split("")
  line = gets.strip.split("")
  rs += line.count {|c| c == 'R'}
  bs += line.count {|c| c == 'B'}
end

if rs > bs
  puts 'TAKAHASHI'
elsif rs < bs
  puts 'AOKI'
else
  puts 'DRAW'
end
