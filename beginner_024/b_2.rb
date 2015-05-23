
n, t = gets.split.map(&:to_i)

cs = []
n.times { cs << gets.strip.to_i }

sum = 0
(0..(cs.length - 1)).each do |index|
  unless index == cs.length - 1
    delta = cs[index+1] - cs[index]
    sum += (delta > t ? t : delta)
  end
end

puts sum += t
