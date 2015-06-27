
def main
  table = []
  integers = []

  (1..5).each {
    line = gets.split.map(&:to_i)
    table << line
  }

  require 'pp'
  pp table

  integers = table.flatten.uniq.sort

  not_exists = []
  (1..25).each {|i|
    not_exists << i unless integers.include? i
  }

  pp not_exists

  empties = []
  table.each_with_index do |rows, i|
    rows.each_with_index do |row, j|
      # enmties << [i, j] if table[i, j] == 0
      empties << [i, j] if row == 0
    end
  end

  pp empties

  counter = 0

  not_exists.permutation(not_exists.length) do |*args|
    combis = args
    combis.each do |combi|
      empties.each do |empty|
        i, j = empty
        break unless check(table, i, j, combi)
        counter += 1
      end
    end
  end
end

def check(table, i, j, int)
  rows = table[i-1], int, table[i+1]
end

main
