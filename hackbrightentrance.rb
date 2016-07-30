#Intention:
# method name decode
# method that takes a string as a parameter
# encodes the string with the following rules
# random number of random letters placed in front of each letter of the string
# then a number that is equivalent to the number of random letters generated placed in front of each set of random letters

#PseudoCode
# open a method that takes a string- called orginal string
# find the length of that string- caled number
# create a loop that takes each letter of the orginal string one at a time

# create a method that takes a number and generates that number of strings which are a random number of random letters, called random string
# for each random string find the length and take that number value and insert it in front of each random string
# insert random string in front of each letter of the orginal string 

#string_length_finder 
	#will be a method that takes any -string- as an agrument called <string>
	# it will generate an -integer- which will be assigned to the variable <number> 
	# <number> will be the length of the argument <string>


def string_length_finder(string)
	number = string.length
	


#random_string_generator
	# will be a method that takes string_length_finder's return value or any integer
	# the argument integer <number> will be used to feed a block to exectue the following commands a certain number of times
	# block code to be run <number> of times
		# cycle through an -array- of the <alphabet> with letters as -string- elements


	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
	# puts alphabet.length
	random_letter_array = []
	random_string_array = []
	number_string_combo = ""
	random_letter = ""
	
	number.times do 
		random_number = Random.rand(5)
			random_number.times do 
				random_letter = alphabet.sample
			end

		random_letter_array << random_letter

		if random_number == 0
			concat_random_letters = ""
		else
			concat_random_letters = ""
			random_letter_array.each do |letter_string|
				concat_random_letters = concat_random_letters + letter_string
			end
		end
		number_string_combo = random_number.to_s + concat_random_letters
	end
	random_string_array.push(number_string_combo)
	



	new_letter_string = ""
	new_string = ""
	new_string_array = []
	string_array = string.split(//)
	string_array.each do |letter|
		x = 0
		until x > string.length
			new_letter_string = random_string_array[x] + letter
		end
		new_string_array = new_string_array + new_letter_string 
	end
	new_string = new_string_array[0]
end 
	


# driver code for checking alphabet is correct length- checks (26)
# random_string_generator(3)

puts string_length_finder("Hello")


# WHY WON"T THIS RUN? 
# def string_length_finder(string)
# 	number = string.length
# 	return number
# end 

# #random_string_generator
# 	# will be a method that takes string_length_finder's return value or any integer
# 	# the argument integer <number> will be used to feed a block to exectue the following commands a certain number of times
# 	# block code to be run <number> of times
# 		# cycle through an -array- of the <alphabet> with letters as -string- elements

# def random_string_generator(number)
# 	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
# 	# puts alphabet.length
# 	random_letter_array = []
# 	random_string_array = []
# 	number_string_combo
	
# 	number.times do 
# 		random_number = Random.rand(5)
# 			random_number.times do |random_letter|
# 				random_letter = alphabet.sample
# 			end

# 		random_letter_array << random_letter

# 		if random_number == 0
# 			concat_random_letters = ""
# 		else
# 			concat_random_letters = ""
# 			random_letter_array.each do |letter_string|
# 				concat_random_letters = concat_random_letters + letter_string
# 			end
# 		end
# 		number_string_combo = random_number.to_s + concat_random_letters
# 	end
# 	random_string_array.push(number_string_combo)
# 	return random_string_array
# end




# def code(string)
# 	string_length_finder(code(string))
# 	random_string_generator(string_length_finder)
# 	new_letter_string = ""
# 	new_string = ""
# 	string.each do |letter|
# 		x = 0
# 		until x > string.length
# 			new_letter_string = random_string_generator[x] + letter
# 		end
# 		new_string = new_string + new_letter_string 
# 	end
# 	return new_string
# end 
	


# # driver code for checking alphabet is correct length- checks (26)
# # random_string_generator(3)

# code("Hello")