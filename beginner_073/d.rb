class City
  def self.create_with_dest_and_cost(src, dest, cost)
    city = new(src)
    city.add_dest(dest, cost)
    city
  end

  def initialize(name)
    @name = name
    @dests = {}
  end

  attr_reader :name

  def add_dest(dest, cost)
    @dests.store(dest, cost)
  end
end

class Map
  def initialize
    @cities = {}
  end

  def has_city?(name)
    @cities.key?(name)
  end

  def add_city(city)
    @cities.store(city.name, city)
  end

  def by_name(name)
    @cities[name]
  end

  def has_route?(dest)
  end

  def find_route(cities)
    unless cities.empty?
      cities.each do |city|
        find_route(cities - city)
      end
    end
  end

end

class Application
  def main
    n, m, r = gets.strip.split(' ').map(&:to_i)
    cities = gets.strip.split(' ').map(&:to_i)
    map = build_map(m)

    cost = 100000
    # map.find_route(cities)
    cities.each do |city|
      local_cost = map.find_route(cities - city)
      if local_cost < cost
        cost = local_cost
      end
    end

    puts cost
  end

  def build_map(m)
    map = Map.new
    (0..m-1).each do |index|
      src, dest, cost = gets.strip.split(' ').map(&:to_i)
      if src > dest
        src,dest = dest,src
      end
      if map.has_city?(src)
        city = map.by_name(src)
        city.add_dest(dest, cost)
      else
        map.add_city(City.create_with_dest_and_cost(src, dest, cost))
      end
    end
    map
  end
end

Application.new.main
