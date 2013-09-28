i,j,k = 1,1,1
while true
  if i.to_s.size >= 1_000
    puts k
    break
  end
  j,i,k = j+i,j,k+1
end

