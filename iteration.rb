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

