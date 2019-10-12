=begin
Challenge
Given a list of numbers, return how many are prime numbers are in the list.
(A prime number is a number with no factors besides 1 and itself.)

Sample Input

2 3 5 6 9

Sample Output

3

There are 3 prime numbers in the input: 2 3 5.

Constraints

All the numbers will be from 2 to 10,000.

Guideline

Create a Set of prime numbers less than 10,000. There are 2 ways you can do this:
Use the Sieve of Eratosthenes, then create a set of the prime numbers from your sieve.
Google it to find the values, hard-code an array with those numbers, and then copy the array values to a Set.
Once you have this Set, the next part is easy.

More about the Sieve of Eratosthenes: http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
=end

require 'set'
require 'prime'

def number_of_primes(arr)
  num = 10000
  primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
  
  arr.count {|i| primes.include?(i)}
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3
