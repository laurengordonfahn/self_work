# method decode parameter a string made up of letters and integers in the code formate given
# take the string  create an array of string elements each character/integer of the string using .split
# 
#loop through each element of the array using .each parameter element
#in the loop test each element through an if statement to see if it is a letter or an integer
# any integers found will be stored in the variable string_integer the index of the element will be stored 
# element_index = array.index(letter)
# element.to_i will be the test
# if should be element == "0" then string_integer = 0 as this is a fringe issue since letters will read as 0 which is dangerous!
#elsif element.to_i == "0" 
# ??? these are letters or a space or punctuation what do I do with them???
#else (should catch element.to_i.inculde?(0-9)- being true
# element_index = array.index(letter) and string_integer = element

#store the element_index and the string_integers in key-value pair in a hash called 
# key will be element_index(an integer showing location) and values will be the string_integers(an integer from the coded string)

#then we will take the hash and make an array of keys using .keys
#looping through the array of keys starting at index 1 in order we will loop through the orginal array and call
# array[key+1] and store each of these values in a new array 
# this new array will be tranformed into a string - giving us the answer!


#fringe cases spaces should be unchanged

def decode(string)
	array_of_string = string.split("")
	integer_element = 0
	element_index = 0
	element_is_not_int = ""
	integer_hash = {}
	array_of_string.each do |element|
		if element == "0"
			integer_element = 0
			element_index = array_of_string.index(element)
		elsif element.to_i != 0
			integer_element = element.to_i
			element_index = array_of_string.index(element)
		else
		end
	end
	integer_hash[element_index] = integer_element
end


#driver code lines 26-28 - expecting string to become an array of 1 char strings
# puts decode("0H2abe1ey 0H2abe1ey")
# puts decode("0H2abe1ey 0H2abe1ey").class

# #driver code lines 28-44 - expecting a hash of key and value pairs that are integers
puts decode("0H2")
puts decode("0H2").class

# # driver code for if block only- 0, h, and 2 where tested NOTE: h gives nilclass!
# def method(element)
# 	integer_element = 0
# 	element_index = 0
# 	element_is_not_int = ""
# 	integer_hash = {}
# 		if element == "0"
# 			integer_element = 0
# 			# element_index = array_of_string.index(element)
# 		elsif element.to_i != 0
# 			integer_element = element.to_i
# 			# element_index = array_of_string.index(element)
# 		else
# 			puts "This isn't and integer"
# 		end

# end
# puts method("2")
# puts method("2").class