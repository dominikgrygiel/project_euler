require 'prime'

def rotations(a)
  arr = a.dup
  out = []
  arr.size.times do
    arr.push arr.shift
    out << arr.dup
  end

  out
end

sum = 0
(2...1_000_000).each do |i|
  sum += 1 if rotations(i.to_s.split('')).all?{ |p| p.join('').to_i.prime? }
end

puts sum

