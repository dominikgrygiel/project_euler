require 'mathn'

all = []
(10...100).each do |a|
  (10...100).each do |b|
    n, d = a.to_s, b.to_s
    if (a != b) && (1.0 * a / b < 1) && !((a % 10).zero? || (b % 10).zero?) && (n[1] == d[0]) && (1.0 * a / b == 1.0 * n[0].to_i / d[1].to_i)
      all << [a,b]
    end
  end
end

puts all.reduce(1){ |memo, el| memo * (el[0]/el[1]) }.denominator

