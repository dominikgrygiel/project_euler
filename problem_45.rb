t = []
(1..100000).each do |n|
  t << n*(n+1)/2
end
p = []
(1..100000).each do |n|
  p << n*(3*n-1)/2
end
h = []
(1..100000).each do |n|
  h << n*(2*n-1)
end

puts((t & p & h).last)

