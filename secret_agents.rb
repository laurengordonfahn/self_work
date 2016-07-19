# method that takes a string
# find string length to find string index max (lenght -1)
# loop through index max to take each letter of the string
# in the loop advance each letter using .next
# save each new letter assingment and add them together to create a new string
# make accomidation for z to be a, and spaces to stay spaces, and all are lowercase
def encrypt(string)
	string_length = string.length
	string_max_index = string_length - 1

	#make string downcase

	string = string.downcase
	
	#counter for the until loop
	counter = 0

	#establishing the variables outside of the loop to avoid nilmethod error
	new_string = ""
	new_letter = ""

	# I don't think letter_called is needed but I don't fully get establishing variables ahead of time
	# letter_called = ""

	until counter > string_max_index
		letter_called = string[counter]
		puts "This is the letter being inspected #{letter_called} and this is its index #{counter}"
		puts letter_called.class

		if letter_called == "z"
			new_letter = "a"
		elsif letter_called == " "
			new_letter = " "
		else

			new_letter = letter_called.next
			puts "This is the orginal letter #{letter_called} this is the new letter #{new_letter}."
			puts new_letter.class
		end
		new_string = new_string + new_letter
		
		counter +=1
	end

		puts "This is the new string #{new_string}"
		
		new_string

end

#driver code for string length - gives 6 as Fixnum
# puts encrypt("length").class
# puts encrypt("length")

#driver code for string_max_index - gives 5 as Fixnum
# puts encrypt("length")
# puts encrypt("length").class

#*** HOW DO I GET THE LOOP TO BE IN A SEPERATE METHOD???

# driver code for first line of loop - it needed '>' not '==' to stop until loop otherwise 1 short, gives a string
# encrypt("length")

#driver code for the second line of loop to call new letter works perfectly, gives a string 
# encrypt("legnth")

#driver code for the third line of loop creating new_string
#errors that arose: nil no method error when the variables where not pre-assigned 
#failure for the new_string to collect because the variables where assigned in the loop instead of outside the loop so they do not refresh but update 
# needed the put the new string print only outside the loop so only get the final version 
# encrypt("length")

#driver code for the if/elsif/else edge cases
#it was necessary to move the new_string outside the if statement so that way the z and space could be accounted for otherwise its traped in the else section
# encrypt("zen hill")

#add down case- works
# encrypt("String")


# decryption - method that takes a string
# find the length of a string
# find the max index of the string
# loop through and call each letter in the string independently using the max index
# compare that letter to the the string of the alphabet
# get the index of that letter in the alphebet string and subtract 1 and call that letter from the alphabet string
# fringe cases such as a and space must be cared for and all should be downcase
def decrypt(string)
	string = string.downcase

	#test string downcase works
	puts string

	string_length = string.length
	string_max_index = string_length - 1

	alphabete_string = "abcdefghijklmnopqrstuvwxyz"


	#test if alphabet is correct length
	puts alphabete_string.length

	counter = 0

	new_string = ""
	until counter > string_max_index
		letter_called = string[counter]
			if letter_called == "a"
				new_letter = "z"
			elsif letter_called == " "
				new_letter = " "
			else
				letter_called_index = alphabete_string.index(letter_called)
				new_letter_index = letter_called_index - 1
				new_letter = alphabete_string[new_letter_index]
			end
	
		new_string = new_string + new_letter
		counter +=1
	end
	puts new_string

	new_string
end



#driver code for decryption - works
# decrypt("Atlas Bone")


#nested driver code revealed that since I ended with a puts statement what was returned at first was nil and that created the error nil nomethod
decrypt(encrypt("swordfish"))

