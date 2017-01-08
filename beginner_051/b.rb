ks = gets.strip
k,s = ks.split(' ').map(&:to_i)

count = 0

perms = Array(0..k).repeated_permutation(3)
perms.each do |perm|
  count += 1 if perm.inject {|sum,n| sum + n } == s
end

puts count
