=begin
Video => Ruby Quick Sort Implementation : https://www.youtube.com/watch?v=UylkmprUKHU
Article => Quicksort Implementation in Ruby: https://medium.com/@andrewsouthard1/quicksort-implementation-in-ruby-92de12470efd

=end

def partition(array, low, high)
  pivot = array[high]
  i = low - 1
  j = low
  while j <= high - 1
    if array[j] <= pivot
      i += 1
      array[i], array[j] = array[j], array[i]
    end
    j += 1
  end
  array[i + 1], array[high] = array[high], array[i + 1]
  puts array.join(' ')
  i + 1
end

def quicksort(array, low, high)
  if low < high
    pi = partition(array, low, high)
    quicksort(array, low, pi-1)
    quicksort(array, pi+1, high)
  end
end

def advanced_quicksort(array)
  quicksort(array, 0, array.size - 1)
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9
