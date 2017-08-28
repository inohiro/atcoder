string = gets.strip
characters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

chars = string.chars.uniq
chars.each do |char|
  index = characters.index(char)
  if index
    characters.delete_at(index)
  end
end

if characters.empty?
  puts 'None'
else
  puts characters.first
end
