# def decode(string)
# 	string_array = string.split("")

# 	nearly_new_string = " "
# 	string_array.each do |element|
# 		nearly_new_string = nearly_new_string + element
# 	end 

# 	return nearly_new_string
# end

# puts decode("String. Thing!")
# puts decode("String. Thing!").class


# def decode(string)
# 	string_array = string.split("")

# 	int_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# 	nearly_new_string = ""
# 	string_array.each do |element|
# 		if element == "0"
# 			nearly_new_string = nearly_new_string
# 		elsif element.to_i != 0
# 			nearly_new_string = nearly_new_string
# 		else 
# 			nearly_new_string = nearly_new_string + element
# 		end
# 	end 

# 	return nearly_new_string
# end

# puts decode("123Strings are Gr8!")
# puts decode("123Strings are Gr8!").class

def decode(string)
	string_array = string.split("")

	int_string_array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

	int_gage = false
	nearly_new_string = ""
	index_counter = -1

	string_array.each do |element|
		if int_string_array.include?(element)
			int_gage = true
		else 
			int_gage = false
		end
	index_counter = index_counter + 1

		if int_gage == true
			nearly_new_string = nearly_new_string + string_array[(element.to_i + index_counter + 1)]
		end

	end 
	return nearly_new_string
end

puts decode("1aH2abi!")
