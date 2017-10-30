=begin

Problem 27

Euler discovered the remarkable quadratic formula:

n^2+n+41

It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39. However, when n=40,402+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,412+41+41 is clearly divisible by 41.

The incredible formula n^2−79n+1601 was discovered, which produces 80 primes for the consecutive values 0≤n≤79. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

n^2+an+b, where |a|<1000 and |b|≤1000

where |n| is the modulus/absolute value of nn
e.g. |11|=11 and |−4|=4
Find the product of the coefficients, aa and bb, for the quadratic expression that produces the maximum number of primes for consecutive values of nn, starting with n=0.
=end

require 'prime'

def chain_length(a,b)
  n = 0
  while (n**2 + a*n + b).prime?
    n = n + 1
  end
  n
end

lm = 999
alist = (-lm..lm).to_a
blist = (-(lm+1)..(lm+1)).to_a.select{|x| x.prime? }
puts alist.product(blist).map{|a,b| [[a,b],chain_length(a,b)] }.max{|x1,x2| x1[1] <=> x2[1]}[0].inject(&:*)
