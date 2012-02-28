puts (0...1000).reduce{ |sum, i| (i % 3 == 0 || i % 5 == 0) ? sum + i : sum }
