#Problem 3


#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

require "prime"

def large_prime_fact(n)
  i = 2
  while !(n % i == 0 && (n / i).prime?)
  	i = i + 1
  end
  (n / i)
end

puts "largest prime for 13195: #{large_prime_fact(13195)}"
puts "largest prime for 600851475143: #{large_prime_fact(600851475143)}"