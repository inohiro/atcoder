
def main
  a, b = gets.split.map(&:to_i)
  a_ary = a.to_s.split('').map(&:to_i)
  b_ary = b.to_s.split('').map(&:to_i)

  a_replaced = replace_a(a_ary, b)
  b_replaced = replace_b(a, b_ary)

  puts [a_replaced, b_replaced].max
end

def replace_a(a_ary, b)
  changed = false

  if a_ary[0] < 9
    a_ary[0] = 9
  else
    if a_ary[1] < 9
      a_ary[1] = 9
    else
      a_ary[2] = 9 if a_ary[2] < 9
    end
  end

  a_ary.join.to_i - b
end

def replace_b(a, b_ary)
  if b_ary[0] > 1
    b_ary[0] = 1
  else
    if b_ary[1] > 0
      b_ary[1] = 0
    else
      b_ary[2] = 0 if b_ary[2] > 0
    end
  end

  return a - b_ary.join.to_i
end

main
