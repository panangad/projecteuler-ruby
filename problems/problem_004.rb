#Problem 4


#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

require "prime"

def ispal(n)
  n == n.to_s.reverse.to_i
end

def large_pal(a,b)
  (a..b).to_a.repeated_permutation(2).to_a.map{|x,y| x*y}.sort.reverse.detect{|x| ispal x}
end

puts "large pal with 2 digits: #{large_pal(10,99)}"
puts "large pal with 3 digits: #{large_pal(100,999)}"