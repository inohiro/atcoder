str = gets.strip

selected = str.chars.select.with_index {|char,index| index % 2 == 0}
puts selected.join

