=begin
Challenge
Return an array with the given graph in BFS order.

Sample Input
graph = {
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

bfs(graph)
# => [0, 2, 5, 3, 4, 1]
=end



