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
