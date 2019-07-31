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
