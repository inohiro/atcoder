
def main
  n, k = gets.split.map(&:to_i)

  ary = []
  n.times {|i| ary << i}

  # N C rest
  if k / n < 1
    comb = ary.combination(k)
  else
    rest = k % n    
    comb = ary.combination(rest)
  end
  puts comb.size % 1_000_000_007
end

main
