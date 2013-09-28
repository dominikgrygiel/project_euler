puts (1..100).reduce{ |memo, i| memo * i }.to_s.split('').reduce(0){ |memo, i| memo + i.to_i }

