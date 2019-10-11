def maze_escape(maze)
  # write your code here
  to_visit = [[0,0]]
  visited = []
  
  distance = { 0 => 0 }
  predecessor = { 0 => 0 }
  (1...maze.size*maze.size).each do |i| 
    distance[i] = maze.size * maze.size
    predecessor[i] = nil
  end
  
  while !to_visit.empty? do
    current = to_visit.shift;
    sideNode = get_sideNode(current, maze.size)
    
    sideNodeAdd = sideNode.reject {|pos| visited.include?(pos) || to_visit.include?(pos)}
    sideNodeAdd = sideNodeAdd.reject {|pos| maze[pos[0]][pos[1]] == 1}
    
    
    sideNodeAdd.each do |pos|
      if (distance[get_index(pos, maze.size)].nil? || 
            distance[get_index(pos, maze.size)] > distance[get_index(current, maze.size)] + 1)
        distance[get_index(pos, maze.size)] = distance[get_index(current, maze.size)] + 1
        predecessor[get_index(pos, maze.size)] = current
      end
    end
    
    visited << current
    to_visit += sideNodeAdd
  end

  # find the position of 9
  goal_index = maze.flatten.index(9)
  
  # p predecessor
  
  # construct the result
  node = goal_index
  result = [[node/maze.size, node%maze.size].reverse]
  while node != 0
    result.unshift(predecessor[node].reverse)
    node = get_index(predecessor[node], maze.size) unless predecessor[node].nil?
    
    break if predecessor[node].nil?
  end
  # result.unshift([node/maze.size, node%maze.size])
  
  return result
end

def get_sideNode(pos, size) 
  sideNode = []
  i,j = pos[0], pos[1]
  
  sideNode << [i-1, j] unless i == 0
  sideNode << [i, j+1] unless j == size - 1
  sideNode << [i+1, j] unless i == size - 1
  sideNode << [i, j-1] unless j == 0
  
  return sideNode
end

def get_index(pos, size) 
  return pos[0]*size + pos[1]  
end



p maze_escape(
  [
    [0, 0, 0, 0, 0], 
    [0, 1, 0, 1, 0], 
    [0, 1, 0, 1, 1], 
    [0, 1, 0, 0, 0], 
    [0, 0, 0, 1, 9]
  ]
)
