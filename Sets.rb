=begin
Sets

These are the important methods a Set supports:
add(item) - Adds an item to the Set.
delete(item) - Removes an item from the Set.
include?(item) - Returns true if the item is in the Set, and false otherwise.

Purpose of Sets
The Set is useful when you want to check if items are in a collection but there's no specific order that you care about.
For example, let's say you're given a raw list of numbers and need to find the numbers that appear more than once. 
What Algorithm could you use to find them?

Solution

Create a Set for holding the items. For each item, check if it's already in the Set. If it is, you've found a duplicate.
Otherwise add the item to the Set.

Standard Sets
Ruby standard library has a class Set.
Documentation: http://ruby-doc.org/stdlib/libdoc/set/rdoc/Set.html

Challenge
A duplicate is a number whose value appeared earlier in the list. Given a list of numbers, 
return an array with all the duplicates in the order that they appear. 
(Duplicates that appear multiple times should be printed multiple times).
Use Ruby's Set class to solve the challenge.
=end

require 'set'

def find_duplicates(array)
  # write your code here
  result = Set.new
  arr = []
  array.each do |i| 
    if result.include?(i) ? arr << i : result.add(i)
    end
  end
  arr
end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]
