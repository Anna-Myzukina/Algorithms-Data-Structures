=begin
The Towers of Hanoi is a classic puzzle with 3 pegs and multiple disks of different sizes. 
The goal of the puzzle is to move all the disks from the first peg to the the third peg according to the following rules:

Only one disk can be moved at a time.
You can only move the top disc in a stack.
No disk may be placed on top of a smaller disk.
Finding an Algorithm
To reach a general solution, first break down the problem into its simplest form. 
We’ll start with only one disk and work our way up.

Case 1

What do you do when there’s just one disk on a starting peg and you need to get it to the goal peg?

Answer: Move the disk to the goal peg.

Case 2

How do you solve the problem when there are just 2 disks on a starting peg and you need to move them to the goal peg?

Answer:

Move the top disk to the “intermediate peg” (the one not used).
Move the large disk to the goal peg (See case 1).
Move the small disk to the goal peg (See case 1).
You can see an explanation of the 2 cases in the following video:


=end
def move(starting, goal)
  # your code here
 
  moveTo = (1..3).find {|n| n != starting && n != goal} 
  "#{starting}->#{moveTo} #{starting}->#{goal} #{moveTo}->#{goal}"

end
puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
