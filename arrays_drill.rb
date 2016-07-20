#new array
new_array = []
p new_array

#ways to add items to the array
new_array = new_array + ["one item"]
p new_array

new_array << "item two" 
p new_array

new_array.push(3)
p new_array

new_array << 4 << 5
p new_array

#delte a index 2
new_array.delete_at(2)
p new_array

#insert new item at index 2
new_array.insert(2, "new item")
p new_array

#remove first item without using index
new_array.delete("one item")
p new_array 

#ask array if it cludes a certain item , print the result
def item_search(array, item)
	if array.include?(item)
		puts "#{array} contains #{item}"
	else
		puts "#{array} does not contain #{item}"
	end
end

item_search(new_array, 2)

newst_array = [ 1, 2, 3, 4]

brand_new = new_array + newst_array
p brand_new


def array_builder(array, item1, item2,item3)
	array = array + [item1, item2, item3]
end
p array_builder(["hello"],1,2,3)
