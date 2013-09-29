require 'prime'

def d(n)
  (10**(n-1) - 1) / n
end

max_n, max_i = 0, 0
Prime.take_while{ |i| i < 1000 }.each do |p|
  n = d(p).to_s
  if (n.scan(/#{n[0..4]}/).size < 2) && (n.size > max_n)
    max_i = p
  end
end

puts max_i

