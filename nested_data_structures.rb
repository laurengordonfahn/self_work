bookcase = [
	'shelf1' = [
		"Books"= {"War and Peace": "Tolstoy", "Love in the Time of Cholera": "Author Unknown"}
		, "Things"= ["Lamp", "Magic 8 Ball"]]
	,'shelf2' = [
		"Books"= {"Alphabet Soup": "Wonder Dog"}
		, "Things" = ["Crystal", " Peace pipe"]]
	,'shelf3' = [
		"Books"= {"Song Bird": "Lance Amstrong", "Call of the Wild": "Jack London"}
		, "Things" = ["yarn collection", "knitting needles"]]
]

#expecting shelf 2
bookcase[1]

#expecting "Crystal"
bookcase[1][0]

#expecting Shelf 1's list of books
bookcase[0]["Books"].keys
