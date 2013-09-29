fraction = '0' + (1..1_000_000).map(&:to_s).join('')

puts fraction[1].to_i * fraction[10].to_i * fraction[100].to_i * fraction[1000].to_i * fraction[10000].to_i * fraction[100000].to_i * fraction[1000000].to_i

