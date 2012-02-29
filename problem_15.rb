def factorial(n)
  (1..n).reduce{ |memo, i| memo * i }
end

puts factorial(40) / (factorial(20) * factorial(20))
