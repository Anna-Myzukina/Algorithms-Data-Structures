=begin
QuickSort1

The first step of Quicksort is to partition an array into two parts.

Challenge
Given an array 'array' and a number 'p' in the first cell in the array,
can you partition the array so that all elements greater than 'p' are to the right
of it and all the numbers smaller than 'p' are to its left?
For example, if given the following as input:
=end

def partition(array)
  # write your code here
  first = array[0]
  right = []
  left = []

  for i in 1..(array.length - 1)
    if first > array[i] 
      left << array[i] 
    else 
      right <<  array[i]
    end
  end
  left + [first] + right
  
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
