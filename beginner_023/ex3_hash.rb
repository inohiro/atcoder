def main
  row, column, k = gets.split.map(&:to_i)
  n = gets.strip!.to_i

  map = {}
  (1..row).each do |r|
    map.store(r, {})
  end

  (1..n).each do |i|
    r, c = gets.split.map(&:to_i)
    map[r].store(c, 1)
  end

  result = 0
  (1..row).each do |r|
    (0..column).each do |c|
      tmp_result = 0
      clone = Marshal.load(Marshal.dump(map))

      tmp_result += clone[r].keys.count # the same row
      clone[r].clear

      (1..row).each do |rr|
        unless clone[rr].empty?
          tmp_result +=1 if clone[rr].has_key? c
        end
      end

      result += 1 if tmp_result == k
    end
  end

  puts result
end

main
