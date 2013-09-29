sum = 0
(0...1_000_000).each do |i|
  sum += i if (i.to_s.reverse == i.to_s) && (i.to_s(2).reverse == i.to_s(2))
end

puts sum

