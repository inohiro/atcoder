ks = gets.strip
k,s = ks.split(' ').map(&:to_i)

count = 0

Array(0..k).repeated_permutation(2) {|x,y|
  z = s - x - y
  count += 1 if (0..k).include?(z)
}
puts count
