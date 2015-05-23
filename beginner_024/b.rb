
n, t = gets.split.map(&:to_i)

cs = []
n.times { cs << gets.strip.to_i }

deltas = []
(0..(cs.length - 1)).each do |index|
  unless index == cs.length - 1
    deltas[index] = cs[index+1] - cs[index]
  end
end

reduced = deltas.reduce(0) {|sum, e|
  sum += (e > t ? t : e)
}

puts reduced += t
