require 'prime'

i = 1
while true
  i += 2
  next if i.prime?

  unless (1..(Math.sqrt((1.0 * i - 1)/2).to_i)).any?{ |j| (i - 2*j*j).prime? }
    puts i
    break
  end
end

