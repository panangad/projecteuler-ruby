=begin

Problem 15


Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


How many such routes are there through a 20×20 grid?

=end

#Till 18*18 can be found with get_path_ct(18, 18)
def get_path_ct(a,b)
  if(a == 0 && b == 0)
    return 1;
  end
  if(a == 0)
    return get_path_ct(a,b-1)
  end
  if(b == 0)
    return get_path_ct(a-1, b)
  end
  if(a == b)
   return 2 * get_path_ct(a, b-1)
  end  
  return get_path_ct(a, b-1) + get_path_ct(a-1, b)  
end

#formula is C(2*n, n) from https://en.wikipedia.org/wiki/Lattice_path

def ncr(n, r)
 (1..n).reduce(&:*) / ((1..r).reduce(&:*) * (1..(n-r)).reduce(&:*))
end

puts ncr(40,20)