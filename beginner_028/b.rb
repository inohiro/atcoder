def main
  input = gets.strip
  hash = {}
  %w(A B C D E F).each {|char| hash[char] = 0 }
  input.split('').each {|char| hash[char] += 1 }
  puts hash.map {|k,v| v }.join(' ')
end

main
