=begin
https://www.youtube.com/watch?v=LU4fGD-fgJQ

Is it balanced?
Can you check if a tree is a height-balanced?

In this challenge, a tree is height-balanced if the maximum and minimum path from any node to a terminal (null node)
descendant differs by at most 1.

For example, this tree is not height-balanced, since the minimum path going down from 5 (to the left) is 2 less than
the maximum path from 5 (to 9 and 4).


Challenge
Return true if a given tree is height-balanced and false otherwise.

Example
tree = [1, 2, 0, 3, 4, 0, 0]

balanced_tree?(tree)
# => false

Get stuck and need some hint?
Check below link: 
https://gitlab.com/microverse/guides/coding_challenges/hints/blob/master/challenges/tress_and_graphs/is-it-balanced.md
=end
