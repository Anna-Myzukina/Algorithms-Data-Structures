=begin
Challenge
For every value i from 0 to 99, can you return an array L, with the number of elements that are less than or equal to i?
=end

def full_counting_sort_prep(array)
  # write your code here
  arr_stg = array.map {|x| x[/\d+/]}
  arr_int = arr_stg.map(&:to_i)
  result = []
  
  (0..99).each do |i|
    count = 0 
    arr_int.each {|j| count += 1 if j <= i}
    result << count
  end
  result
  
end
