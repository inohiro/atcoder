def main
  input = gets.strip.to_i
  case input
  when 100
    puts 'Perfect'
  when 90..99
    puts 'Great'
  when 60..89
    puts 'Good'
  else
    puts 'Bad'
  end
end

main
