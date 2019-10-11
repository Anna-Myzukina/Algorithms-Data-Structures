=begin
Challenge
Given a graph, return true if the graph is one connected component, and false otherwise.
By using a search algorithm (BFS/DFS), you can traverse through the entire graph and save visited nodes. 
If you visited all nodes listed in the original graph, it means that all of them are connected.
=end

def connected_graph?(graph, node = 0, visited=[])
# write your code here

return if visited.include?(node)
visited.push(node)
graph[node].each{|n| connected_graph?(graph, n ,visited)}

if graph.length == visited.length
return true 
else return false 
end

end


puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true
