require 'prime'

primes = []
sum, stop = 0, false
Prime.take_while do |p|
  primes << p
  sum += p
  stop = true if sum > 1_000_000

  !stop
end

max, max_sum = 0, 0
(0..(primes.size / 2)).each do |i|
  ((primes.size / 2)...(primes.size)).each do |j|
    s = primes[i..j].reduce(0){ |memo, k| memo + k }
    size = primes[i..j].size
    max, max_sum = size, s if (s < 1_000_000) && s.prime? && (size > max)
  end
end

puts max_sum

