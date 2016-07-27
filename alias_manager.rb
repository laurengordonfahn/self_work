#method takes first and last name returns array name array with last 0 index
# and first in 1 index
def swap_name(first_name, last_name)
	name = [last_name.downcase, first_name.downcase]
	return name
end

#expecting to see gordon, lauren, array - expectations met
# puts swap_name("Lauren", "Gordon")
# puts swap_name("Lauren", "Gordon").class

#psuedo code
#take each index of the name array and split it into letters array (lines 21-23)
#create an array for vowels and an array for consenents (lines25-27)
# create block that checks if each name letter array contains each vowel
	# use an until loop to go through each letter array and a .each block to see if 
	#each vowel is contained in the array element location
	#if statement to replace each vowel with the after it


def split_name(swap_name)
	#this takes a string and makes an array of each name
	letters0 = swap_name[0].split("")
	letters1 = swap_name[1].split("")
	# puts letters0.class
	vowels = ["a", "e", "i", "o", "u" ]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", 
		"s", "t", "v", "w", "x", "y", "z"]
	#create an empty array to be filled with the new letters out side the loop so it can be filled stationary? 
	vowels_replaced_letters0 = []
	x = 0
	#I would like to know if it is possible to embed two loops one vowel one for letters?
	until x > letters0.length
		vowels.each do |vowel|

			#check to see if each vowel is in the letters array
			if letters0.include?(vowel) == true
				#if the vowel is in the letters array than we want to find the index at which it is in the letters array
				vowel_location_in_letters = letters0.index(vowel)
				# find vowels index in the VOWELS array and add 1 to find new vowel letter 
				new_vowel_index = (vowels.index(vowel) + 1)
				# find new vowel as the next vowel in the VOWELS array
				new_vowel = vowels[new_vowel_index]
				#replace the old vowel with the new vowel in the same index location in letters array
				vowels_replaced_letters0 << new_vowel
			else
				#this should take anything that is not a vowel and put the same letter in its location
				vowels_replaced_letters0 << letters0[x]
			end
		end

		x +=1
	end
	puts vowels_replaced_letters0
end

# Driver code lines 1-23This driver code works but only returns letters1 which is the last line so expected?
# puts split_name(swap_name("Lauren", "Gordon"))

# This driver code for lines 1-23 doesn't run saying 0 arguments for 2 how do I do this
# puts split_name(swap_name)

#Driver code for lines 26-44
split_name(swap_name("Lauren", "Gordon"))



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