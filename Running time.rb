def running_time(array)
  # write your code here
  count = 0
  n = array.length - 1
  for i in 1..n
    value = array[i]
    j = i 
    while j > 0 && array[j-1] > value
      array[j] = array[j-1]
      j -= 1
      count += 1
    end
    array[j] = value
  end
    count
  
end

puts running_time([2, 1, 3, 1, 2])
# => 4
