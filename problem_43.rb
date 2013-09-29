sum = 0
(0..9).to_a.map(&:to_s).permutation do |j|
  n = j.join('')
  next if j[0] == '0'

  if (n[1,3].to_i % 2).zero? && (n[2,3].to_i % 3).zero? && (n[3,3].to_i % 5).zero? && (n[4,3].to_i % 7).zero? && (n[5,3].to_i % 11).zero? && (n[6,3].to_i % 13).zero? && (n[7,3].to_i % 17).zero?
    sum += j.join('').to_i
  end
end

puts sum

