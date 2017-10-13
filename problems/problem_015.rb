=begin

Problem 15


Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


How many such routes are there through a 20×20 grid?

=end

def rt_ct(n)
  (0..n).map{|x| (0..n).map{|y| [x,y] } }.count
end

00 01 11
00 10 11

00 01 02 12 22
00 01 11 12 22
00 01 11 21 22
00 10 11 12 22
00 10 11 21 22
00 10 20 21 22

4/2
12/2

