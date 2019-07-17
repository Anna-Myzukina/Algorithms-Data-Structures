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
