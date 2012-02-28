require "prime"
puts Prime.each.take_while{ |i| i < 2_000_000 }.reduce(:+)
