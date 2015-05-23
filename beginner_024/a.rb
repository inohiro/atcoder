a, b, c, k = gets.split.map(&:to_i)
s, t = gets.split.map(&:to_i)

price = 0
price += a * s + b * t

people = s + t

if people >= k
  price = price - c * people
end

puts price
