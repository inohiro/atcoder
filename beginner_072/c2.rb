n = gets.strip.to_i
integers = gets.split(' ').map(&:to_i)

count = 0
max = 0

stats = {}

integers.each do |int|
  if stats[int]
    stats[int] += 1
  else
    stats[int] = 1
  end
end
