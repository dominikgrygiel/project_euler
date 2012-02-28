range = (1..100).to_a
puts range.reduce(:+)**2 - range.map{ |i| i**2 }.reduce(:+)
