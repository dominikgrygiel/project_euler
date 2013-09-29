class Array
  def binary_search(val)
    low, high = 0, length - 1
    while low <= high
      mid = (low + high) / 2
      case
        when self[mid] > val then high = mid - 1
        when self[mid] < val then low = mid + 1
        else return mid
      end
    end
    nil
  end
end

pis = [0]
(1..10000).each do |i|
  pis[i] = i*(3*i-1)/2
end

found = false
(1..10000).each do |i|
  (1..10000).each do |j|
    pi, pj = [pis[i], pis[j]].sort
    if (i != j) && pis.binary_search(pi + pj) && pis.binary_search(pj - pi)
      puts pj - pi
      found = true
      break
    end
  end
  break if found
end

