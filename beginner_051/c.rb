input = gets.strip
sx,sy,tx,ty = input.split(' ').map(&:to_i)

dx = tx - sx
dy = ty - sy

U = 'U'
R = 'R'
D = 'D'
L = 'L'

output = []
dy.times { output << U }
dx.times { output << R }
dy.times { output << D }
dx.times { output << L }

output << L
(dy+1).times { output << U }
(dx+1).times { output << R }
output << D

output << R
(dy+1).times { output << D }
(dx+1).times { output << L }
output << U

puts output.join
