# -*- coding :utf-8 -*-
def main
  first = gets.strip.split( / / )

  n = first[0].to_i
  m = first[1].to_i

  inputs = []
  cds = []

  n.times do |i|
    cds << i
  end

  if m == 0
    cds.each do |c|
      puts c + 1
    end
    return
  end

  m.times do
    inputs << gets.strip.to_i
  end

  tmp_cd = 0

  inputs.each do |input|
    cds.each_with_index do |cd,i|
      if cd == input
        tmp_cd = cds[0]
        cds[0] = cd
        cds[i] = tmp_cd
      end
    end
  end

  cds.each do |c|
    puts c
  end
end

main
