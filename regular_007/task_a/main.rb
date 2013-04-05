# -*- coding: utf-8 -*-

require 'pp'

def main
  broken_key = gets.to_s.split( // ).first
  input = gets.to_s
  input_list = input.split( // )
  output_list = []

  input_list.each do |c|
    output_list << c if c != broken_key
  end
  puts output_list.join
end

main
