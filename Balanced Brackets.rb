=start
https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
https://www.hackerrank.com/challenges/balanced-brackets/problem

Balanced Brackets
There are 3 kinds of Brackets: [] {} (). 
Given a String  of characters, check if all the brackets in the String are Balanced. 
A  string is balanced if all the start and end brackets are in a correct  
order so they match each other.
Here are some balanced Strings:

{}
(hello)[world]
[({}{}{})([])]

Here are some Unbalanced ones:

(hello - no ending )
([)] - The [ is improperly enclosed in the ().
)( - There's an ending ) without a ( before it.

Return true if a line is balanced and false otherwise.

Examples

The following are 3 test cases:

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true

Algorithm:

Declare a character stack S.
Now traverse the expression string exp.
If the current character is a starting bracket (‘(‘ or ‘{‘ or ‘[‘) then push it to stack.
If the current character is a closing bracket (‘)’ or ‘}’ or ‘]’) 
then pop from stack and if the popped character is the matching starting bracket 
then fine else parenthesis are not balanced.
After complete traversal, if there is some starting bracket left in stack then “not balanced”
Below image is a dry run of the above approach:
=end

// () - true
// []{}() - true
// ({}) - true
// ((((())))) - true
// ___________
// ({)} - false
// []] - false
// [[] - false


function isMatch( left, right ) {
 return ( left === '(' && right === ')' || left === '[' && right === ']' || left === '{' && right === '}' )
}

# ============ solving these solution first variant =============
def balanced_brackets?(string)
    stack = []
    opening = ['(', '[', '{']
    closing = [')', ']', '}']
    
    string.chars.each do |char|
      if opening.include?(char)
        stack << char
      elsif closing.include?(char)
      value = stack.pop
        return false if opening.index(value) != closing.index(char)
      end
    end
    
    stack.empty?
  end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true


# ============ solving these solution second variant =============
def balanced_brackets?(string)
  # your code here
  array = Array.new
  array = string.str('a-z', '').chars
  
if array[0] == '}' && array[0] == ']' && array[0]== ')'
  return false
else
  i=0

  while i < array.length
   if array[i+1] == '[' && array[i+2] == ')'
   return false
 elsif array[-1] == '('
 return false
 else
   return true
  end
  i+=1
end
end
end

# ============ solving these solution third variant =============

module Parser
  BRACKET_PAIRS = {
    ')' => '(',
    ']' => '[',
    '}' => '{'
  }.freeze
  OPEN_BRACKETS = ['(', '[', '{'].freeze
  
  def balanced_brackets?(string)
    stack = []

    string.split('').each do |char|
      if OPEN_BRACKETS.include?(char)
        stack.push(char)
      elsif BRACKET_PAIRS[char] == stack.last
        stack.pop
      else
        return false
      end
    end
    
    stack.empty?
  end
end

# ============ solving these solution fourth variant =============

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true

def balanced_brackets?(string)
    stack = []
    opening = ['(', '[', '{']
    closing = [')', ']', '}']
    
    string.split('').each do |char|
      if opening.include?(char)
        stack << char
      elsif closing.include?(char)
      value = stack.pop
        return false if opening.index(value) != closing.index(char)
      end
    end
    
    stack.empty?
  end
puts balanced_brackets?('(hello)[world]')
# => true
puts balanced_brackets?('([)]')
# => false
puts balanced_brackets?('[({}{}{})([])]')
# => true
