require 'prime'

def truncks(n)
  out = []
  n = n.to_s
  (0...n.size).each do |i|
    out << n[i..(n.size - 1)].to_i
  end
  (0...n.size).to_a.reverse.each do |i|
    out << n[0..i].to_i
  end

  out
end

i, sum = 0, 0
Prime.take_while do |p|
  if (p > 10) && truncks(p).all?{ |n| n.prime? }
    i += 1
    sum += p
  end

  i < 11
end

puts sum

