bookcase = {
	'shelf1' => {
		books: {"War and Peace"=> "Tolstoy", "Love in the Time of Cholera" => "Author Unknown"},
		 things:["Lamp", "Magic 8 Ball"],
	},
	'shelf2' => {
		books: {"Alphabet Soup" => "Llyod Micpherson"},
		 things:["Crystal", " Peace pipe"]
	},
	'shelf3' => {
		books: {"Song Bird" => "Lance Amstrong", "Call of the Wild" => "Jack London"},
		 things: ["yarn collection", "knitting needles"]
	}
}

#expecting shelf 2
puts bookcase['shelf2']

#expecting "Crystal"
puts bookcase['shelf2'][:things][0]

#expecting Shelf 1's list of books
puts bookcase['shelf1'][:books].keys
