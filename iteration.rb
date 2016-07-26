array = ["item1", "item2", "item3"]
hash = {name:"Lauren", height: 5.1, happy: true}

array.each do |itemx|
	x = 0
	until x > array.length
		location = array.index(itemx) + 1
		
		x +=1	
	end
	puts "this is #{itemx} it is the #{location} location in this array."
end

hash.each do |key, value|
	puts "this line has the key value of #{key} which is maped to #{value}"
end


new_array = array.map do |itemx|

	itemx + "is awesome"
end
puts array
puts new_array

# note that if I call puts hash here it will run but the lower one does not because it is gone!
puts hash 

new_hash = hash.map do |key, value|
	hash[key] = nil

end

#note that puts hash below doesn't run because it has already been changed? I think 
puts hash
puts new_hash