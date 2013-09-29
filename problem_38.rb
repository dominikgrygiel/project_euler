max_n = 0

(1...100_000).each do |i|
  n = i.to_s + (2*i).to_s
  max_n = n.to_i if (n.size == 9) && (n.split('').map(&:to_i).sort.join('') == '123456789') && (n.to_i > max_n)
end

puts max_n

