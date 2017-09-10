input = gets.strip
puts input.chars.map(&:to_i).include?(9) ? 'Yes' : 'No'
