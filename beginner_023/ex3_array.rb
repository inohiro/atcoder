def main
  row, column, k = gets.split.map(&amp;:to_i)
  n = gets.strip!.to_i

  map = {}
  (1..row).each do |r|
    c = []
    column.times {|i| c &lt;&lt; 0 }
    map.store(r, c)
  end

  r_c = []
  (1..n).each do |i|
    r, c = gets.split.map(&amp;:to_i)
    map[r][c-1] = 1
  end

  result = 0
  (1..row).each do |r|
    (0..column-1).each do |c|
      tmp_result = 0
      clone = Marshal.load(Marshal.dump(map))

      tmp_result += clone[r].count {|e| e == 1} # the same row
      clone[r].collect! {|e| e = 0}

      (1..row).each do |rr|
        tmp_result += 1 if clone[rr][c] == 1
      end

      result += 1 if tmp_result == k
    end
  end

  puts result
end

main
