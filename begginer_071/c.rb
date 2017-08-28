n = gets.strip.to_i
a = gets.strip.split(' ').map(&:to_i)

sticks = {}
a.map do |stick|
  if sticks[stick]
    sticks[stick] += 1
  else
    sticks[stick] = 1
  end
end

found = 0
a.uniq.sort.reverse.each do |current|
  count = sticks[current]
  if count >= 4
    if found > 0
      puts current * found
    else
      puts current * current
    end
    exit 0
  elsif count == 2 or count == 3
    if found > 0
      puts found * current
      exit 0
    else
      found = current
    end
  end
end

puts 0
