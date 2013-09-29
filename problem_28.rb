sum = 1
(3..1001).step(2).each do |i|
  sum += 4*i*i - 6*i + 6
end

puts sum

