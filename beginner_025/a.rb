
chars = gets.strip.split('').sort
num = gets.to_i

combinations = []

chars.each do |outer|
  chars.each do |inner|
    combinations << "#{outer}#{inner}"
  end
end

puts combinations[num-1]
