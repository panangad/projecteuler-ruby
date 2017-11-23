=begin

Problem 35

The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?

=end

require 'prime'

def allrots(n)
  ln = n.to_s.length
  ml = 10**(ln-1)
  ln.times.map{|x| t = n % 10; n = n / 10; n = n + t * ml}
end

def ifallprime(n)
  return false if n.to_s =~ /[02468]/
  return false if !n.prime?
  nnn = allrots(n)
  rs = nnn[0..-2].detect{|x| !x.prime? }
  !rs
end

puts (3..1000000).step(2).select{|x| ifallprime(x) }.count + 1