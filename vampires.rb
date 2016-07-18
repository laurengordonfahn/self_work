class Vampire
#get intake details
  def intialize(year, prompt)
  	@year = year
  	@prompt = prompt
    @name = nil
    @age = nil
    # @......
  end

  def vampire_name
    puts "What is you name?"
    @name = gets.chomp
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
    @garlic_order= gets.chomp
  end
  
  def health_insurance
    puts "Would you like health insurance? (yes or no)"
    @insurance_request = gets.chomp
  end
  
  #run all the intake questions at once
  def vampire_questions
  	puts @prompt
    vampire_name
    vampire_age
    vampire_birth_year
    garlic_bread
    health_insurance
  end
  
  
  #validators for questions transforming them into true and false
  def birthday_validator
    if (@year.to_i - @age.to_i == @birth_year.to_i)
      true
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
    if @garlic_order == "yes"
      true
    else
      false
    end
  end
  
  def insurance_validator
    if @insurance_request == "yes"
      true
    else 
      false
    end
  end
  
  #to support birthday_validator
  
  
  def vampire_checker
    if (age_checker && (garlic_bread_validator ||       insurance_validator))
      puts "Probably not a vampire"
    elsif (age_checker && (garlic_bread_validator || insurance_validator))
      puts "Probably a vampire"
    elsif (age_checker && garlic_bread_validator && insurance_validator)
      puts "Almost certainly a vampire."
    elsif (@name == "Drake Cula" || @name == "Tu Fang")
      puts "Definitely a vampire."
    else
      puts "results inconclusive."
    end
  end
end



def current_year
   puts "What year is it?"
   gets.chomp
end

#this takes the place of run_program where you can extend it to the number of people you want to question

def run_program_with_loop
	year = current_year
	array = []
	2.times do |x|
		applicant = Vampire.new(year, "Applicant #{x}")
		array << applicant
		applicant.vampire_questions
	end

	array.each do |applicant|
		applicant.vampire_checker
	end
end




#to run the intake and test the answers given
def run_program
  year = current_year
  applicant1 = Vampire.new(year, "Applicant 1")
  applicant1.vampire_questions


  applicant2 = Vampire.new(year, "Applicant 2")
  applicant2.vampire_questions

  applicant1.vampire_checker
  applicant2.vampire_checker
end




#driver code
run_program_with_loop


