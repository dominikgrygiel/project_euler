puts (1..1000).to_a.reduce(0){ |memo,i| memo + i**i }.to_s[-10..-1]

