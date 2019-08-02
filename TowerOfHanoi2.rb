def hanoi_steps(number_of_discs)
# your code here
step(number_of_discs, 1, 2, 3)
end

def step(number_of_discs, starting, intermediate, goal)
if number_of_discs == 1
puts move(starting, goal)
else
step(number_of_discs-1, starting, goal, intermediate)
puts move(starting, goal)
step(number_of_discs-1, intermediate, starting, goal)
end
end

def move(starting, goal)
"#{starting}->#{goal}"
end 
