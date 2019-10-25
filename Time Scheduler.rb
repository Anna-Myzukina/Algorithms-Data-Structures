=begin
https://www.geeksforgeeks.org/maximal-disjoint-intervals/
Maximal Disjoint Intervals
Given a set of N intervals, the task is to find the maximal set of mutually disjoint intervals. 
Two intervals [i, j] & [k, l] are said to be disjoint if they do not have any point in common.
=end


def time_scheduler(array)
  result =[]
  events = array.each_slice(2).to_a.sort! {|a, b| a[1] <=> b[1] }
  result << events[0]
  r1 = events[0][1]
  for i in (1...events.size)
    l1 = events[i][0]
    r2 = events[i][1]
    if l1 > r1
      result << events[i]
      r1 = r2
    end
  end
  result
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]

