=begin
https://apidock.com/ruby/Array/flatten

flatten(p1 = v1) public
Returns a new array that is a one-dimensional flattening of self (recursively).

That is, for every element that is an array, extract its elements into the new array.

The optional level argument determines the level of recursion to flatten.

s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten(1)              #=> [1, 2, 3, [4, 5]]
=end


def maximum_time_range(arrray)
  # write your code here
  result =[]
  events = arrray.each_slice(2).to_a.sort! {|a, b| a[0] <=> b[0] }
  result << events[0]
  print events
  for i in (1...events.size) do 
    top = result.last
    if top[1] < events[i][0]
      result << events[i]
    elsif top[1] < events[i][1]
      top[1] = events[i][1]
      result.pop
      result << top
    end
  end
  if result.size == 1
     result.flatten
  else
    result
  end
end
