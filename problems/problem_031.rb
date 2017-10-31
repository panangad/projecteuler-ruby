=begin

Problem 31

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?


=end

coins = [200, 100, 50, 20, 10, 5, 2, 1]

def maketarget(inp, tar)
  if tar == 0 || inp.empty?
    return []
  end

  if inp.length == 1 && tar % inp[0] == 0
    return [[[inp[0], tar/inp[0]]]]
  end
  if inp.length == 1 && tar % inp[0] == 0
  	return []
  end

  sols = []
  inp.each_with_index do |cn,idx|
   (tar/cn).times.map do |ct|
      tms = ct + 1
      newtar = tar - cn * tms
      newlst = inp[(idx+1)..-1]
      if newtar == 0
      	sols = sols + [[[cn, tms]]]
      else
        sols  = sols + maketarget(newlst,newtar).map{|x| [[cn, tms]] + x}
      end
    end
  end
  return sols
end

a = maketarget(coins, 200)
puts a.count
# a.each do |ln|
#   puts ln.map{|x| x.join(" x ")}.join(' + ')
# end