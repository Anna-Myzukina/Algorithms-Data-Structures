=begin
Challenge
Create your own list-based hash table with n mod 11 as the hash function for each number n. Always use the absolute value of n.
Given a list of numbers, hash them all into the hash table.
Return an array with the numbers in the order that they appear in the hash table. 

https://ruby-doc.org/core-2.6.5/Enumerable.html#method-i-sort_by
https://ruby-doc.org/core-2.5.0/Numeric.html#method-i-abs
=end


def hash_table(arr)
  # write your code here
  arr.sort_by{|i| i.abs % 11}
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]
