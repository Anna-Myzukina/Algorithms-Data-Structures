def median(array)
  # write your code here
  med = array.size / 2 
  sorted = array.sort_by{ |a| a }
  array.size.odd? ? sorted[med] : (sorted[med]+sorted[med-1])/2.0
  
  
end

puts median([0, 1, 2, 4, 6, 5, 3])
# => 3
