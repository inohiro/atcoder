
def main
  n, r = gets.split.map(&:to_i)
  s = gets.strip!.split("")

  operations = 0

  (0..n).each do |index|
    break if s.uniq == ['o']
    if s[index] == '.' || contain(s, index, r)
      if (index+r-1) <= n
        (index..(index+r-1)).each do |ri|
          s[ri] = 'o'
        end
      else
        (index..n-1).each do |ri|
          s[ri] = 'o'
        end
      end
      operations += 1 # coloring
      break if s.uniq == ['o']
      operations += 1 # move
    else
      operations += 1
    end
  end

  puts operations
end

def contain(s, index, r)
  (index..(index+r-1)).each {|i|
    if s[i] == '.'
      if s[i+1..i+r-3].uniq == ['o']
        return true
      end
    end
  }
  return false
end

main
