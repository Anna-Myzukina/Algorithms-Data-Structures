=begin
https://en.wikipedia.org/wiki/Quicksort
=end
def quicksort(array, low, high) 
  move = 0
  if low < high
    
    l = low
    (low..high-1).each do |i|
        if array[i] <= array[high]
            array[i], array[l] = array[l], array[i]
            l += 1
            
            move += 1
        end
    end
    array[l], array[high] = array[high], array[l]
    move += 1

    low_index = l
    
    movetoleft = quicksort(array, low, low_index - 1) 
    movetoright = quicksort(array, low_index + 1, high)
    
    move += movetoleft + movetoright
  end
  
  return move
end 

def running_time(array)
  # write your code here
  result = 0
  
  array[1..-1].each_with_index do |value, index|
    i = index 
    
    while i >= 0 && array[i] > array[i + 1] do
      array[i+1], array[i] = array[i], array[i + 1]
      result += 1
      i -= 1 
    end 
    array[i+1] = value
  end
  
  
  
  return result
end

def quicksort_running_time(array)
  # write your code here
  
  dup1 = quicksort(array.dup(), 0, array.size-1)
  dup2 = running_time(array.dup())
  
  return (dup1 - dup2).abs
end


puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1

