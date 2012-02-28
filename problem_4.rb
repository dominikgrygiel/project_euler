m = 0

(100...1000).each do |i|
  (100...1000).each do |j|
    new = i * j
    m = [m, new].max if new.to_s.reverse == new.to_s
  end
end

puts m
