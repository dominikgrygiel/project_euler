require "prime"

i = d = number = 2
while d < 500
  number = i * (i + 1) / 2
  d = 1
  number.prime_division.each do |j|
    d *= (j[1] + 1)
  end
  i += 1
end
puts number
