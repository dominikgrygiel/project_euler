puts (0..9).map(&:to_s).permutation.to_a.map(&:join).sort[1_000_000 - 1]

