=begin

Problem 21

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def divi_sum(n)
  i = 2
  f = n
  sum = 1
  while i < f
  	f,r = n.divmod(i)
  	sum = sum + i + f if r == 0
  	i = i + 1  	
  end
  sum
end


puts (1..9999).select{|x| a = divi_sum(x); b = divi_sum(a); c = divi_sum(b); (x != a) && (x == b && a == c) }.uniq.reduce(&:+)