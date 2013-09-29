require 'prime'

found, i = false, 2
while !found
  if (Prime.prime_division(i).map(&:first).uniq.size >= 4) && (Prime.prime_division(i + 1).map(&:first).uniq.size >= 4) && (Prime.prime_division(i + 2).map(&:first).uniq.size >= 4) && (Prime.prime_division(i + 3).map(&:first).uniq.size >= 4)
    puts i
    found = true
  end

  i += 1
end

