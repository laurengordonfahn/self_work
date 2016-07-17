#get intake details
def vampire_name
	puts "What is you name?"
	name = gets.chomp
end

def vampire_age
	puts "What is your age?"
 	@age = gets.chomp
end


def vampire_birth_year
	puts "What is your year of birth?"
	@birth_year = gets.chomp
end

def garlic_bread
	puts "Would you like garlic bread from the cafateria? (yes or no)"
	garlic_order= gets.chomp
end

def health_insurance
	puts "Would you like health insurance? (yes or no)"
	insurance_request = gets.chomp
end

#run all the intake questions at once
def vampire_questions
	vampire_name
	vampire_age
	vampire_birth_year
	garlic_bread
	health_insurance
end

#to support birthday_validator
def current_year
	puts "What year is it?"
	year = gets.chomp
end

#validators for questions transforming them into true and false
def birthday_validator
	if (@year.to_i - vampire_age.to_i = @birth_year.to_i)
	else
		false
	end
end

def age_checker
	if ((@age.to_i < 100) && birthday_validator)
		true
	end
end

def garlic_bread_validator
	if garlic_bread == "yes"
		true
	else
		false
	end
end

def insurance_validator
	if health_insurance == yes
		true
	else 
		false
	end
end

#to support birthday_validator
def current_year
	puts "What year is it?"
	@year = gets.chomp
end


#To test the candiates answers
def vampire_checker
	if (age_checker && (garlic_bread_validator || insurance_validator))
		puts "Probably not a vampire"
	elsif (age_checker && (garlic_bread_validator || insurance_validator))
		puts "Probably a vampire"
	elsif (age_checker && garlic_bread_validator && insurance_validator)
		puts "Almost certainly a vampire."
	elsif (vampire_name == "Drake Cula" || vampire_name == "Tu Fang")
		puts "Definitely a vampire."
	else
		puts "results inconclusive."
	end
end

#to run the intake and test the answers given
def run_program
	vampire_questions
	current_year
	vampire_checker
end

#driver code
run_program


