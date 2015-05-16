
def main
  a, b = gets.split.map(&:to_i)
  a_ary = a.to_s.split('').map(&:to_i)
  b_ary = b.to_s.split('').map(&:to_i)

  change_a = false
  if (a != 999) && (999 - a).abs < (100 - b).abs
    change_a = true
  end

  changed = false

  if change_a
    if a_ary[0] < 9
      a_ary[0] = 9
      changed = true
    else
      if a_ary[1] < 9 && !changed
        a_ary[1] = 9
        changed = true
      else
        if a_ary[2] < 9 && !changed
          a_ary[2] = 9
          changed = true
        end
      end
    end
  else
    if b_ary[0] > 1 && !changed
      b_ary[0] = 1
      changed = true
    else
      if b_ary[1] > 0 && !changed
        b_ary[1] = 0
        changed = true
      else
        if b_ary[2] > 0 && !changed
          b_ary[2] = 0
        end
      end
    end
  end

  a = a_ary.join.to_i
  b = b_ary.join.to_i
  puts a - b
end

main
