=begin
Challenge
The "Prime Prime" is a prime number that is the factor of the most numbers in a given list. 
Can you find the Prime prime in each list?
For example, for the list {2, 3, 5, 6, 9}, the answer is 3, since 3 is a factor of 3, 6, and 9, 
which is more than any other number in the list.
Note: Unlike the prime challenge, here each number N in a list will be in the range 2 to 10,000.

Guideline

Get all the prime numbers that you need like in the previous challenge. Then use a Hash to keep track 
of the number of times each prime number
is factor of a number in the list.
=end

require 'prime'

def prime_prime(arr)
  num = 10000
  primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
  
  hash = Hash.new(0)
  arr.each do |n|
    primes.each {|p| hash[p] += 1 if n % p == 0}
  end
  hash.key(hash.values.max)
end

puts prime_prime([2, 3, 5, 6, 9])
# => 3
