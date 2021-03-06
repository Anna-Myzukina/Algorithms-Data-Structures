=start
https://www.learneroo.com/modules/95/nodes/503
https://en.wikipedia.org/wiki/Transpose


Instructions from your teacher:
Transposition
A Transposition Error is when two letters are swapped, such as in "hte" instead of "the", or "rign" instead of "ring".
Given a string of characters, can you fix every place where "gn"  appears 
so it becomes "ng" instead? If there are multiple "g"s in a row,  the "n" should be swapped with the first "g". 
No "gn" should appear in  the final text, so be careful with all possibilities!

Full Credit

Try to solve this challenge with only one pass through the text.

Examples

The following are 3 test cases:

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg

=end

def transpose(string)
  # your code here
  
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
----------------
  teachers variant
def transpose(string)
  # your code here
  while string.include?('gn')
		string.gsub!('gn', 'ng')
	end
	
	string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg

=end

def transpose(string)
  # your code here
until !string.include?('gn') do
  string = string.gsub('gn', 'ng')
end
return string
  
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
