max_n, max_p = 0, 0
(3..1000).each do |p|
  max = 0
  (1..(p / 4)).each do |a|
    ((a+1)..((p-a) / 2)).each do |b|
      c = Math.sqrt(a*a + b*b)
      max += 1 if a + b + c == p
    end
  end

  if max > max_n
    max_n = max
    max_p = p
  end
end

puts max_p

