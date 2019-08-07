=begin
Backtracking Recursion

You will be given a list of numbers where the first number is the desired sum and the remaining numbers are the coins.
Determine if the coins can be added together to reach the exact sum. You cannot use the same coin twice, 
but you can use duplicate coins (if there are any).
For example, when given (12, [1, 2, 3, 4, 5]), print true since 1+2+4+5 = 12 (among other possibilities). 
When given (11, [1, 5, 9, 13]), print false, since there's no way to reach a sum of 11 with those numbers.

Go through the array of coins in order. For each coin you reach, you can  either add it to your sum,
or ignore it. Try each of these possibilities, and go on to the next coin within each one of them. 
Then repeat the same process with the next coin.

Converting it to code

The algorithm described above could not be encoded with a simple loop. This is because it "splits in two" 
each time to try out every  possibility, while a loop just goes through things in order. 

The function should go through the array one number at a time, and  recursively call itself twice:
Once, with the coin subtracted from the desired sum, and once without the coin. 
The beginning of the function should check if the end of the array has been reached, and check if the sum is down to 0 or not.

Challenge
Given a number k and a list of coins, determine if the coins can be added together to equal k. 
Print true if you can get the exact sum and false otherwise.

Example
exact_sum?(12, [1, 2, 3, 4, 5])
# => true

exact_sum?(11, [1, 5, 9, 13])
# => false


====== teachers variant of solving this task =======
def exact_sum?(k, coins)
  #write your code here
  return true if k == 0
  return false if coins.empty? || k < 0
  
  exact_sum?(k-coins[0], coins[1..-1]) || exact_sum?(k, coins[1..-1])
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
===============

=end


def exact_sum?(k, coins)
  #write your code here
  l = coins.length
return count_func(k, coins, l)
end
def count_func (k, coins, l)
 if  k == 0
   return true
 elsif l == 0 && k != 0
 return false
 elsif coins[l-1].to_i > k
 return count_func(k, coins, l-1)
 else
 return count_func(k, coins, l-1)  || count_func(k - coins[l-1].to_i, coins, l-1);
end
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
