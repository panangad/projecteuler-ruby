=begin

Problem 33

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.


=end


lst = (10..99).to_a.product((10..99).to_a).select do |a,b|
  ((((a/10).to_f / (b%10)) == (a.to_f/b)) && a%10 == b/10 && (a.to_f/b) < 1 )
end

fr = [lst.map{|x| x[0]}.inject(&:*) , lst.map{|x| x[1]}.inject(&:*)]
puts fr.map{|x| x/fr.reduce(&:gcd)}.last
