factors = []

i = 2
x = 600851475143
e = Math.sqrt(x).to_i
while i <= e
  if x % i == 0
    factors << i
    x /= i
    e = Math.sqrt(x).to_i
  else
    i += 1
  end
end
factors << x if i > 1

puts factors.max
