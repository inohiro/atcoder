
omote, ura = gets.split.map(&:to_i)
k = gets.to_i

if k <= ura
  ura = ura - k
  omote = omote + k
elsif k > ura
  delta = k - ura
  omote = omote + ura
  omote = omote - delta
  ura = 0
end

puts omote
