def decode(string)
	#take the input -string- and split it into elements in string add it to an -array-
	string_array = string.split("")

	#create an -array- of all singleton numbers to be itterated through as a check for integers
	int_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

	#lay out all variables to be used inside double loop
	orginal_element = 0 # <orginal_element> will hold all the <elements> from the block after they pass in order to feed our hash
	index_counter = -1 # <index_counter> will increase by 1 each round of the outter do block in order to create the index of element
	hash_of_elements = {} # <hash_of_elements> -hash- will hold keys = index of elements, values = the elements from the oringal <string_array>
	
	hash_of_int = {} # <hash_or_int>  -hash- will hold keys = the index of integer elements, values = the integer elements from the oringal <string_array>
	
	string_of_int = "" # <string_of_int> -string- will hold the string of the full integer in order to assess if there is a 10s, 100s, 1000s etc place number in the decode string
	array_int_keys = [] # <array_int_keys> -array- will hold all the keys from the <hash_of_elements> that have values that are -integers-
	string_of_int_array = []  # <string_of_int_array> -array- will hold all the strings of the 10s, 100s, 100s place numbers from the decode string>

	#1st do loop goes through each <element> (a -string- of 1 character letter or number) in the string_array to generate an <index_counter> for each element and feed the hash_of_elements
	string_array.each do |element|
		orginal_element = element
		index_counter = index_counter + 1
		hash_of_elements[index_counter] = orginal_element
	end
	# puts statements are driver code to check that we are populating the <hash_of_elements>
		puts hash_of_elements.class
		puts "-----"
		puts hash_of_elements.keys
		puts "-----"
		puts hash_of_elements.values
		puts "------"

	#2nd do loop goes through each key-value pair in the hash_of_elements 
	#2nd do loop's if statement checks if the orginal_element is inculded in the int_array if it is that <orginal_element> and its <index_counter> populates <hash_or_int>
	hash_of_elements.each do |index_counter, orginal_element| 
		if  orginal_element == "0"
			hash_of_int[index_counter] = orginal_element.to_i
		elsif orginal_element.to_i != "0"
			if int_array.include?(orginal_element.to_i)
				hash_of_int[index_counter] = orginal_element.to_i
			end
		else
			hash_of_int[index_counter]=orginal_element
			hash_of_int.delete(index_counter)
		end
		
	end
	# puts statements are driver code to check that we are populating the <hash_of_int>
		puts hash_of_int.class
		puts "-----"
		puts hash_of_int.keys
		puts "-----"
		puts hash_of_int.values
	
	# 	array_int_keys = hash_of_int.keys
	# 	x = 0
	# 	until array_keys[(x + 1)] != (array_keys[x] + 1)
	# 		array_int_keys.each do |int|
	# 			string_of_int = string_of_int + array_keys[x] 
	# 			string_of_int_array << string_of_int
	# 		end
	# 		x += 1
	# 	end
	# end
end
decode("0h2abi")












# # method decode parameter a string made up of letters and integers in the code formate given
# # take the string  create an array of string elements each character/integer of the string using .split
# # 
# #loop through each element of the array using .each parameter element
# #in the loop test each element through an if statement to see if it is a letter or an integer
# # any integers found will be stored in the variable string_integer the index of the element will be stored 
# # element_index = array.index(letter)
# # element.to_i will be the test
# # if should be element == "0" then string_integer = 0 as this is a fringe issue since letters will read as 0 which is dangerous!
# #elsif element.to_i == "0" 
# # ??? these are letters or a space or punctuation what do I do with them???
# #else (should catch element.to_i.inculde?(0-9)- being true
# # element_index = array.index(letter) and string_integer = element

# #store the element_index and the string_integers in key-value pair in a hash called 
# # key will be element_index(an integer showing location) and values will be the string_integers(an integer from the coded string)

# #then we will take the hash and make an array of keys using .keys
# #looping through the array of keys starting at index 1 in order we will loop through the orginal array and call
# # array[key+1] and store each of these values in a new array 
# # this new array will be tranformed into a string - giving us the answer!


# #fringe cases spaces should be unchanged

# def decode(string)
# 	array_of_string = string.split("")
# 	integer_element = 0
# 	element_index = 0
# 	element_is_not_int = ""
# 	integer_hash = {}
# 	array_of_string.each do |element|
# 		if element == "0"
# 			integer_element = 0
			
# 		elsif element.to_i != 0
# 			integer_element = element.to_i
			
# 		else
# 			integer_element = element
			
# 		end
# 		integer_index = integer_index + 1
# 		integer_hash[element_index] = integer_element
# 	end
	
# end


# #driver code lines 26-28 - expecting string to become an array of 1 char strings
# # puts decode("0H2abe1ey 0H2abe1ey")
# # puts decode("0H2abe1ey 0H2abe1ey").class

# # #driver code lines 28-44 - expecting a hash of key and value pairs that are integers
# puts decode("0H2")
# puts decode("0H2").class

# # # driver code for if block only- 0, h, and 2 where tested NOTE: h gives nilclass!
# # def method(element)
# # 	integer_element = 0
# # 	element_index = 0
# # 	element_is_not_int = ""
# # 	integer_hash = {}
# # 		if element == "0"
# # 			integer_element = 0
# # 			# element_index = array_of_string.index(element)
# # 		elsif element.to_i != 0
# # 			integer_element = element.to_i
# # 			# element_index = array_of_string.index(element)
# # 		else
# # 			puts "This isn't and integer"
# # 		end

# # end
# # puts method("2")
# # puts method("2").class