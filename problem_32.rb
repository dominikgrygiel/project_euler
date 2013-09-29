used = []
used_products = []
sum = 0
(1..9).map(&:to_s).permutation.each do |p|
  (1..7).each do |a|
    ((a+1)..8).each do |b|
      multiplicand = p[0...a].join('').to_i
      multiplier = p[a...b].join('').to_i
      product = p[b..-1].join('').to_i
      if (multiplicand * multiplier == product) && !used_products.include?(product) && !used.include?([multiplicand, multiplier])
        used << [multiplicand, multiplier]
        used << [multiplier, multiplicand]
        used_products << product
        sum += product
      end
    end
  end
end

puts sum

