=begin

Problem 23

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
=end

def divi_sum(n)
  i = 2
  f = n
  sum = 1
  #lm = Math::sqrt(n).ceil
  while i < f
    f,r = n.divmod(i)
    if r == 0
      if i == f
        sum = sum + i
      else
        sum = sum + i + f
      end
    end
    i = i + 1
  end
  sum
end

def is_ab(n)
  divi_sum(n) > n
end


lm = 28123
numlist = (1..lm).select{|x| is_ab x}.repeated_combination(2).map{|x| x.sum}.uniq.select{|x| x < lm}.sort.reverse
puts (1..(lm-1)).to_a.reverse.select{|x| !numlist.include? x}.sum

