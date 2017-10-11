#Problem 5


#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def find_lcm(n)
  (1..n).reduce(:lcm)
end

puts "lcm till 10: #{find_lcm(10)}"
puts "lcm till 20: #{find_lcm(20)}"