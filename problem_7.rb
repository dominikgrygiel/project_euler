require "prime"
i = 0
puts Prime.each.take_while{ |k| i += 1; i <= 10_001 }.last
