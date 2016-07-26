array = ["item1", "item2", "item3"]
hash = {name:"Lauren", height: 5.1, happy: true}

array.each do |itemx|
	x = 1
	until x > array.length
		puts "this is #{itemx}  it is the #{array.index()} location in this array."
		x +=1	
	end
end

hash.each do |key, value|
	puts "this line is the value of #{key} is #{value}"
end

