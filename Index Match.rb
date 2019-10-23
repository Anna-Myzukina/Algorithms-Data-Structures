=begin

https://stackoverflow.com/questions/10369563/difference-between-on-and-ologn-which-is-better-and-what-exactly-is-olo
https://www.coursera.org/learn/algorithms-part1/home/welcome
https://hackernoon.com/10-free-data-structure-and-algorithm-courses-junior-developers-should-explore-978b72871af5

Index Match
Given a sorted array of integers with no duplicates, find the spot where array[i] == i.
It's super-easy to find a solution in O(n) time, but can you code an O(log n) solution?

Challenge
Return the index where they match, or -1 if there is none.

Example
puts index_match([0, 2, 3, 7, 9, 11])
# => 0
=end

def index_match(array)
  # write your code here
  array.each_index.select do |index|
    if array[index] == index
      spot = array[index]
      return spot
    end
  end
  else
    return -1
end
    
      
      


puts index_match([0, 2, 3, 7, 9, 11])
# => 0
