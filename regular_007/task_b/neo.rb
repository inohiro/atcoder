# -*- coding: utf-8 -*-
require 'pp'

def main
  first = gets.strip.split( / / )
  n = first[0].to_i
  m = first[1].to_i

  pp n
  pp m

  inputs = []
  cds = []

  ( n + 1 ).times do |i=1|
    cds << i
  end

  if m == 0
    cds.delete_at( 0 )
    puts cds
    return
  end

  m.times do
    inputs << gets.strip.to_i
  end

  tmp = 0
  inputs.each do |input|
    cds.each_with_index do |cd,i|
      if cd == input
        tmp = cds[0]
        cds[0] = cds[i]
        cds[i] = tmp
      end
    end
#    pp input
#    pp cds
  end

#  pp cds
  puts cds
end

main
