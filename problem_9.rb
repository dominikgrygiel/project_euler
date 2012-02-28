(1...1000).each do |i|
  (1...1000).each do |j|
    next if i + j >= 1000
    k = 1000 - i - j
    puts i * j * k and break(2) if i*i + j*j == k*k
  end
end
