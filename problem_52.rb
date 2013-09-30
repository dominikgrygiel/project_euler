@sorts = []
def sorted(n)
  @sorts[n] ||= n.to_s.split('').map(&:to_i).sort.join('')
end

i = 1
while !((sorted(i) == sorted(2*i)) && (sorted(i) == sorted(3*i)) && (sorted(i) == sorted(4*i)) && (sorted(i) == sorted(5*i)) && (sorted(i) == sorted(6*i)))
  i += 1
end

puts i

