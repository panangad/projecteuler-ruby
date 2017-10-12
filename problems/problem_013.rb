=begin

Problem 10


The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end

require 'prime'

num = (3..2000000).step(2).select{|x| x.prime?}.reduce(&:+) + 2
puts num