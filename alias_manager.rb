def name_input
	puts "Give a first name to be encrypted."
	@first_name = gets.chomp.downcase

	puts "Give a last name to be encrypted."
	@last_name = gets.chomp.downcase
end

# name_input

def swap_name
	@swap_name = [@last_name, @first_name]
end

# puts swap_name
# puts swap_name.class


def change_letters
	new_name = @swap_name.each do |string_name|
		letters = string_name.split('')
			letters.each do |letter|
				letter.letter_swap
	end
	puts new_name

end

def letter_swap
	if "a"
		puts "e"
	elsif "e"
		puts "i"
	elsif "i"
		puts "o"
	elsif "u"
		puts "a"
	elsif "z"
		puts "b"
	elsif "d"
		puts "f"
	elsif "h"
		puts "j"
	elsif "n"
		puts "p"
	elsif "t"
		puts "v"
	else
		letter.next
	end
end



def run_alias
	name_input
	swap_name
	change_letters
end

run_alias