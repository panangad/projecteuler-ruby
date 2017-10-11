#Problem 7


#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

require 'prime'

def nth_prime(n)
  ct,i = 2, 3
  while ct < n
  	i = i + 2
  	ct = ct + 1 if i.prime?
  end
  i
end

puts "nth prime 6: #{nth_prime(6)}"
puts "nth prime 10001: #{nth_prime(10001)}"