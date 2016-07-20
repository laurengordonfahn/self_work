def client_hash
	
	puts "Client Name"
	client_name = gets.chomp

	puts "Client age"
	client_age = gets.chomp.to_i

	puts "Number of children"
	number_children = gets.chomp.to_i

	puts "Decor theme"
	decor_theme = gets.chomp

	client_hash = {name: client_name, 
					age: client_age,
					children: number_children,
					decor: decor_theme }
	puts client_hash

	update_request = ""
	value_update
	puts "Would you like to update any of the input? 'yes' or 'no'"

	until update_request == "no"
		update_request = gets.chomp
		if update_request != ("yes"|| "no")
			puts "we did not understand you, Would you like to update any of the input? 'yes' or 'no'"
		elsif update_request == "yes"
			puts "Please, type the first key you would like to update #{client_hash.keys}"
			key_update = gets.chomp
			puts "Please, type the new updated input for #{key_update}"
			value_update = gets.chomp
			client_hash[update_request] = value_update
			puts "This is the updated client information #{client_hash}"
		elsif update_request == "no"
			puts "Thank you for using this program to create your client database" 
		end	
	end

	client_hash[update_request] = value_update


end
#NOT FINISHED WITH THIS PROGRAM TRYING TO MAKE IT BIGGER THAN ASSIGMENT FOR LEARNING
client_hash
