
def main
  n = gets.strip!.to_i
  s = gets.strip!.to_s

  if n < 1 or n > 100
    puts '-1'
    return
  end

  unless valid_s?(s, n)
    puts '-1'
    return
  end

  accessory = ['b']
  return if same_name?(accessory, 0, s)

  (1..n).each do |i|
    case i % 3
    when 1 # 3n + 1
      accessory.unshift 'a'
      accessory.push 'c'
      return if same_name?(accessory, i, s)
    when 2 # 3n + 2
      accessory.unshift 'c'
      accessory.push 'a'
      return if same_name?(accessory, i, s)
    when 0 # 3n + 0
      accessory.unshift 'b'
      accessory.push 'b'
      return if same_name?(accessory, i, s)
    end
  end

  puts '-1'
end

def same_name?(accessory, i, s)
  if accessory.join == s
    puts i
    true
  else
    false
  end
end

def valid_s?(s, n)
  return false if s.length != n

  ss = s.split('').uniq
  return false if ss.length < 1

  ss.each do |hoge|
    return false unless %w(a b c).include? hoge
  end

  true
end

main
