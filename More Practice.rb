=begin
Challenge
Given a list of numbers, can you find all the pairs of numbers whose sum equals k?

Input

The provided function takes 2 parameters: an array array, and the special number k. 

Output

Return an Array with the pairs of numbers. Print each pair with the first number followed by the second, 
and print all the pairs in the order that the second number appears in the list.
=end

def find_pairs(array, k)
  resut = []

  for i in 0..(array.length - 1)
    for j in (i+1)..(array.length - 1)
      resut.push(array[i], array[j]) if array[i] + array[j] == k
    end
  end
  sum = resut.each_slice(2).to_a
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
