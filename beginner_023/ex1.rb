
def main(argv)
  w = gets.strip!.to_s
  sum = 0
  w.split('').each {|i| sum += i.to_i }
  puts sum
end


main(ARGV)
