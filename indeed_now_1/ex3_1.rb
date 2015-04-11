def main(argf)
  n = argf.gets.to_i

  points = []
  n.times do |i|
    p = argf.gets.to_i
    points << p if p > 0
  end
  # points.delete(0)

  q = argf.gets.to_i
  ks = []
  q.times do |i|
    ks << argf.gets.to_i
  end

  point_map = {}
  points.each do |p|
    if point_map.key?(p)
      point_map[p] += 1
    else
      point_map.store(p, 1)
    end
  end

  from_btm = points.sort
  btm_uniq = from_btm.uniq

  ks.each do |upper|
    if upper == 0
      if from_btm.size > 1
        puts from_btm[-1] + 1
      else
        puts 0
      end
      next
    else
      sum = 0
      btm_uniq.each do |p|
        sum += point_map[p]
        if sum > upper
          puts p + 1
          break
        end
      end
      if sum <= upper
        puts 0
      end
    end
  end
end

main(ARGF)
