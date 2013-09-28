def d(n)
  @_d ||= []
  @_d[n] ||= (1..(n/2 + 1)).select{ |i| (n % i).zero? }.reduce(&:+)
end

sum = 0
used = []
(1...10_000).each do |a|
  next if used.include? a
  b = d(a)
  if d(b) == a && a != b
    used += [a,b]
    sum += a + b
  end
end

puts sum

