sum = 0
(2...1_000_000).each do |i| #you won't find any number longer than 6 digits (7 * 9**5 < 10**7)
  sum += i if i == i.to_s.split('').reduce(0){ |memo,n| memo + n.to_i**5 }
end

puts sum

