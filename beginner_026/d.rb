
include Math

def main
  a, b, c = gets.split.map(&:to_i)

  t = 0
  while true do
    # puts t
    if f(a, b, c, t) >= 100
      if t >= 0.9
        puts t.to_f
        break
      end
    end
    t += 0.1
  end
end

def f(a, b, c, t)
#   puts '------------------------------------------'
#   puts t
#   puts a * t
#   puts c * t * Math::PI
#   puts b * Math::sin(c + t + Math::PI)
  hoge = a * t + b * Math::sin(c * t * Math::PI)
  # puts hoge
  hoge
end

main
