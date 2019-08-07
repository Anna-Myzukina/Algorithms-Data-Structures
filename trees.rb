=begin
Video about Trees:
https://www.coursera.org/lecture/data-structures/trees-95qda?authMode=signup&redirectTo=%2Flecture%2Fdata-structures%2Ftrees-95qda
what binary tree is: 
https://opendsa-server.cs.vt.edu/ODSA/Books/Everything/html/BinaryTree.html

how to store binary tree in an array (1 as index of the first element): 
https://inst.eecs.berkeley.edu/~cs61bl/r//cur/trees/array-repr.html?topic=lab20.topic&step=1&course=

how to store a binary tree in an array (0 as index of the first element): 
https://opendsa-server.cs.vt.edu/ODSA/Books/Everything/html/CompleteTree.html

Question to more deep understanding binary tree:
(at the end of page with questions you find answers)
http://www.cs.cmu.edu/~clo/www/CMU/DataStructures/Questions/reviewQuestion4_1.htm

What is the minimum number of internal nodes in a binary tree with 8 nodes?
Answer : 4
=end

def leftmost_nodes_sum(array)
  # your code here
  root = 0
  sum = array[root].to_i
  
  for x in root..array.length do
    index = (2 * root) + 1
    
    if index < array.length
      sum += array[index].to_i
      root = index
    end
  end
  return sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11
