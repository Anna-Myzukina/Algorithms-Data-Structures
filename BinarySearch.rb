=begin
Challenge

The method sqrt takes in one square number. 

Fill the method sqrt_recursive that returns the square root of a given number.
Do not use any built in methods for calculating the square-root and don't try searching through all the numbers. 
Instead, use a binary-style search to home in on the actual square root. 
(To make it simpler, the input will just contain square numbers.)

Examples

puts sqrt(25)
# => 5

puts sqrt(7056)
# => 84
=end

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  result = 0
  max = max_interval
    while min_interval <= max_interval do
      mid = (min_interval + max_interval)/2
      root = mid * mid
        
        if root == max
            return mid
        elsif root < max
            min_interval = mid+1
            result = mid
          elsif root > max
            max_interval = mid-1
          end
        end
        return result
end


puts sqrt(25)
puts sqrt(7056)
