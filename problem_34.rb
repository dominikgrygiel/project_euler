def factorial(n)
  if n <= 1
    1
  else
    (1..n).reduce{ |memo, i| memo * i }
  end
end

sum = 0
(3..3_000_000).each do |i|
  sum += i if i.to_s.split('').reduce(0){ |memo,el| memo + factorial(el.to_i) } == i
end

puts sum

