def sort_itself(array)
  n = array.length - 1
  for i in 1..n
    value = array[i]
    j = i 
    while j > 0 && array[j-1] > value
      array[j] = array[j-1]
      j -= 1
    end
    array[j] = value
    puts array.join(' ')
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
