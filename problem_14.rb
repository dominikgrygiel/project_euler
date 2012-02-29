$counted = { 1 => 1 }
def chain_length(n, i = 0)
  return $counted[n] + i if $counted[n]
  if n.odd?
    return chain_length(3 * n + 1, i+1)
  else
    return chain_length(n/2, i+1)
  end
end

(2...1_000_000).each do |i|
  $counted[i] = chain_length i
end
puts $counted.max_by{ |k,v| v }.first
