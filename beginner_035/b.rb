require 'pry'

class Application
  def main
    s = gets
    t = gets

    coordinates = [Coordinate.new]
    commands = s.split

    generations = coordinates

    commands.each do |command|
      generations << move(generations.last, command)
    end

    binding.pry

  end

  def move(coordinates, command)
    coordinates.each do |coordinate|
      case command
      when 'L'
        coordinate.move_left
        [coordinate]
      when 'R'
        coordinate.move_right
        [coordinate]
      when 'U'
        coordinate.move_up
        [coordinate]
      when 'D'
        coordinate.move_down
        [coordinate]
      when '?'
        coordinate.dup_as_candidates
      else
      end
    end
  end
end

class Coordinate
  attr_reader :x, :y

  def initialize
    @x = 0
    @y = 0
  end

  def move_left
    @x -= 1
  end

  def move_right
    @x += 1
  end

  def move_up
    @y += 1
  end

  def move_down
    @y -= 1
  end

  def dup_as_candidates
    [ self.dup.move_left,
      self.dup.move_right,
      self.dup.move_up,
      self.dup.move_down,
    ]
  end
end

Application.new.main
