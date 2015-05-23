class MyRange
  attr_reader :src, :dst

  def initialize(src, dst)
    @src, @dst = src, dst
  end

  def include?(int)
    if src <= dst
      (src..dst).include?(int)
    else
      (dst..src).include?(int)
    end
  end

  def to_a
    if src <= dst
      (src..dst).to_a
    else
      (dst..src).to_a
    end
  end

  def destination(current, direction)
    if direction # 'asc'
      @dst
    else # 'desc'
      @src
    end
  end
end


def main
  n, d, k = gets.split.map(&:to_i)

  lrs = []
  d.times {
    l, r = gets.split.map(&:to_i)
    lrs << MyRange.new(l, r)
  }

  sts = []
  k.times { sts << gets.split.map(&:to_i) }
  days = []

  sts.each do |group|
    _start, _end = group[0], group[1]
    _current = _start
    direction = _start <= _end ? true : false

    (1..d).each do |day|
      restriction = lrs[day-1]
      # pp restriction
      # puts "day: #{day}, _current: #{_current}, restriction: #{restriction.to_a}"

      if restriction.include? _current
        if restriction.include? _end
          days << day
          break # end
        end

        # _current = restriction.dst # go to r
        _current = restriction.destination(_current, direction)
      end
    end
  end

  days.each {|day| puts day}
end

main
