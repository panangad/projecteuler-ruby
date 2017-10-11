=begin

Problem 9


A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end


nums = (1..666).to_a.combination(2).select{|x,y| x + y < 666}.map{|x,y| t = 1000 - (x+y); [x,y,t].sort}.uniq.select{|x,y,z| x*x + y*y == z*z}
puts nums.first.reduce(&:*)