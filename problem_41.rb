require 'prime'

max_p = 0
Prime.take_while do |p|
  max_p = p if p.to_s.split('').map(&:to_i).sort.join('') == (1..p.to_s.size).to_a.join('')
  p <= 7654321
end

puts max_p

