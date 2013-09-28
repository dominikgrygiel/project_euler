sundays = 0

(1901..2000).each do |year|
  (1..12).each do |month|
    sundays += 1 if Time.new(year, month, 1).sunday?
  end
end

puts sundays

