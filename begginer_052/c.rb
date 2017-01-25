require 'pp'
require 'pry'

class Application
  def main
    n = gets.strip.to_i
    n_kaijyo = kaijyo(n)
    puts n_kaijyo
    puts num_all_yakusuu(n, n_kaijyo)
  end

  def kaijyo(n)
    n == 1 ? 1 : n * kaijyo(n - 1)
  end

  def num_all_yakusuu(origin, n)
    e = []
    (2..origin).each do |i|
      while n % i == 0 && n > 1
        e << i
        n /= i
      end
    end

    # FIXME

  end
end

Application.new.main
