INDEED_NOW = 'indeednow'
SORTED_INDEED = 'ddeeinnow'

def main(argf)
  lines = []
  line_num = argf.gets.strip!.to_i

  line_num.times do |i|
    lines << argf.gets
  end

  lines.each do |line|
    l = line.strip!
    if l.length == INDEED_NOW.length
      if l.split('').sort.join == SORTED_INDEED
        puts 'YES'
      else
        puts 'NO'
      end
    else
      puts 'NO'
    end
  end
end

main(ARGF)
