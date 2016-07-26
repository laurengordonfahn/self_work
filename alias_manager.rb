#method takes first and last name returns array name array with last 0 index
# and first in 1 index
def swap_name(first_name, last_name)
	name = [last_name.downcase, first_name.downcase]
	return name
end

#expecting to see gordon, lauren, array - expectations met
# puts swap_name("Lauren", "Gordon")
# puts swap_name("Lauren", "Gordon").class

#take each index of the name array and split it into letters array
#create an array for vowels and an array for consenents
# create block that checks if each name letter array contains each vowel
	# use an until loop to go through each letter array and a .each block to see if 
	#each vowel is contained in the array element location
	#if statement to replace each vowel with the after it


def split_name(swap_name)
	letters0 = name[0].split("")
	letters1 = name[1].split("")

	# vowels = ["a", "e", "i", "o", "u" ]
	# consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", 
	# 	"s", "t", "v", "w", "x", "y", "z"]
	vowel_replaced_letters0 = []
	x = 0
	until x > name.length
		vowels.each do |vowel|
			return name[x].inculde?(vowel)
			if return == true
				name[x] = vowels. index(vowels.index(vowel) + 1)
				vowels_replaced_letters0 << name[x]
			else
				vowels_replaced_letters0 << name[x]
			end
		end

		x +=1
	end
end

puts split_name(swap_name("lauren", "gordon")





# def change_letters(full_name)
#   new_name = @swap_name.map do |string_name|
#     letters = string_name.split('')
#     print letters
#     letters.map do |letter|
#       letter_swap(letter)
#     end.join('')
#     print letters
#   end
#   puts new_name

# end

# def letter_swap(letter)
  
#   # fix this
#   if "a"
#     puts "e"
#   elsif "e"
#     puts "i"
#   elsif "i"
#     puts "o"
#   elsif "u"
#     puts "a"
#   elsif "z"
#     puts "b"
#   elsif "d"
#     puts "f"
#   elsif "h"
#     puts "j"
#   elsif "n"
#     puts "p"
#   elsif "t"
#     puts "v"
#   else
#     letter.next
#   end
  
#   vowels = ["a", "e", "i", "o", "u"]
#   consonants = ["b", "c", "d",...]
# end

# ["l", "a", "u", "r", "e", "n"]

# def run_alias
#   name_input
#   swap_name
#   change_letters(swap_name)
# end

# run_alias