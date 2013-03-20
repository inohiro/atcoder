# coding: utf-8

days = %w( Monday Tuesday Wednesday Thursday Friday Saturday Sunday )

input = STDIN.gets.strip
index = days.index input
puts ( [5,6].index index ) ? 0 : 5 - index
