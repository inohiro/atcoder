
MAX = 99_999_999
# MAX = 10

require 'pp'

def main
  a = gets.strip.to_i
  b = gets.strip.to_i
  c = gets.strip.to_i

  # table = Array.new(5, Array.new(1))
  table = Array.new(MAX+1) {[1]}
  table[0][0] = 1

  x, y = 0
  find = false

  0.upto(MAX).each do |i|
    0.upto(MAX).each do |j|
      i = 1 if i == 0
      j = 1 if j == 0

      # puts "i: #{i}, j: #{j}"
      left = table[i-1][j] || 1
      down = table[i][j-1] || 1
      sum = left + down

      table[i][j] = sum

      if sum == a
        find = true
        x = j
        y = i
        break
      end
    end
    if find
      break
    end
  end

  require 'pp'
  pp table
  puts "#{x} #{y}"
end

main
