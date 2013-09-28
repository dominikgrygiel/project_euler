class Fixnum
  def abudant?
    sum = 1
    (2..Math.sqrt(self)).each do |i|
      if (self % i).zero?
        sum += i
        sum += (self / i) if (self / i) != i
      end
    end

    sum > self
  end
end

abudants = []
possibles = []
(12..28123).each { |i| abudants << i if i.abudant? }
abudants.each do |i|
  abudants.each do |j|
    possibles << i + j
  end
end

puts ((1..28123).to_a - possibles).reduce(&:+)

