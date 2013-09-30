require 'prime'

primes = []
Prime.take_while do |p|
  primes << p if p >= 1000
  p < 10000
end

primes.each do |p|
  p1 = primes.select { |i| (i > p) && (p.to_s.split('').map(&:to_i).sort.join('') == i.to_s.split('').map(&:to_i).sort.join('')) }.find do |i|
    j = i + (i-p)
    primes.include?(j) && (p.to_s.split('').map(&:to_i).sort.join('') == j.to_s.split('').map(&:to_i).sort.join(''))
  end

  if p1 && (p != 1487)
    puts "#{p}#{p1}#{p1+(p1-p)}"
    break
  end
end

