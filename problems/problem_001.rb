#Problem 1

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def find_sum(n)
  (1..(n-1)).select{|x| x % 3 == 0 or x % 5 == 0}.reduce &:+
end

puts "sum below 10: #{find_sum(10)}"
puts "sum below 1000: #{find_sum(1000)}"