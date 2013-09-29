require 'prime'

max_n, max_a, max_b = -1, 0, 0
(-999..999).each do |a|
  (-999..999).each do |b|
    n = 0
    while (n*n + a*n + b).prime?
      n += 1
    end

    max_a, max_b, max_n = a, b, n if n > max_n
  end
end

puts max_a * max_b

