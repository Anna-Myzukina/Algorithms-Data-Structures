=begin
https://www.geeksforgeeks.org/maximal-disjoint-intervals/
Maximal Disjoint Intervals
Given a set of N intervals, the task is to find the maximal set of mutually disjoint intervals. 
Two intervals [i, j] & [k, l] are said to be disjoint if they do not have any point in common.
=end


def time_scheduler(array)
  # write your code here
  return [] if array.empty?
  groups = array.group_by { |n| n <=> array.first }
  less_than    = groups[-1] || []
  first        = groups[0]  || []
  greater_than = groups[1]  || []
  quick_sort(less_than) + first + quick_sort(greater_than)
  
end
  def quick_sort(array)
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

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
