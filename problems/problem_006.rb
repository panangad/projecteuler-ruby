#Problem 6


#The sum of the squares of the first ten natural numbers is,

#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def find_diff(n)
  a1 = (1..n).map{|x| x*x }.reduce &:+
  a2 = (1..n).reduce(&:+)
  a2*a2 - a1
end

puts "find diff 10: #{find_diff(10)}"
puts "find diff 100: #{find_diff(100)}"