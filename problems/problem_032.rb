=begin

Problem 32

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.


=end

#Incomplete

def ispand9(n)
  t = n.to_s
  t.split('').uniq.count == t.length
end

alst = (1..3000).select{|x| ispand9(x) }
alst_alst = alst.combination(2).select{|a,b| ispand9(a.to_s + b.to_s)}
puts alst_alst.select{|a,b| ispand9(a.to_s+b.to_s+(a*b).to_s) }.map{|a,b| a * b}.uniq.sum
