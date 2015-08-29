
def main
  n, k = gets.split.map(&:to_i)
  all = (1..n).to_a.repeated_permutation(3).map {|a| a }

  s = all.select {|a| (a[0] + a[1] + a[2]) >= (2 * k) }
  # s = all.select {|a| a[0] == k or a[1] == k or a[2] == k }

  count = s.count {|a| a.sort[1] == k}
  # puts "all: #{all.size}"
  # puts "count: #{count.size}"

  # printf("%.20f\n", count * 1.0 / all.size)
  puts count * 1.0 / all.size
end

main


# 1, k, k+1
# 1 + k + (k+1)
# 2k+1


# 1..k
# k..n
