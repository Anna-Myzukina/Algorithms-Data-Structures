def smallest_difference(array)
  # write your code here
 array.sort.combination(2).min_by { |a, b| (a-b).abs }
end

p smallest_difference([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854])
# => [-20, 30]
