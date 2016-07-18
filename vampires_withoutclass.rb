def vampire_name
  puts "What is your name?"
  @name = gets.chomp
end

#run code - returns string
# vampire_name
# p @name.class  

def vampire_age
  puts "How old are you?"
  @age = gets.chomp.to_i
end

#run code - returns fixnum
# vampire_age
# p @age.class

def vampire_year_birth
  puts "What year where you born?"
  @birth_year = gets.chomp.to_i
end

# # run code- returns- Fixnum
# vampire_year_birth
# p @birth_year.class

def garlic_bread_order
  puts "Would like garlic bread from the cafateria? ('yes' or 'no')"
  @garlicbread_request = gets.chomp.downcase
end

#run code - returns - a down case answer string
# p garlic_bread_order
# p @garlicbread_request.class

def health_insurance
  puts "Would you like to enroll in the company health Insurance? ('yes' or 'no')"
  @healthinsurance_request = gets.chomp.downcase
end

#run code - returns - downcase string
# p health_insurance
# p @healthinsurance_request.class

def current_year
  puts "What year is it?"
  @year = gets.chomp.to_i
end

 #run code - returns fixnum
 # p current_year
 # p @year.class

#age_checker requires that current_year, vampire_age, and vampire_year_birth be run)
def age_checker
  if ((@year - @age) == @birth_year)
    true
  else
    false
  end
end

#run code -returns **** I DON"T KNOW HOW TO SHOW THIS RETURNS A BOOLEAN****
# current_year
# vampire_age
# vampire_year_birth
# p age_checker


def garlic_bread_checker
  if @garlicbread_request == 'yes'
    @garlic_bread_answer = true
  else
    @garlic_bread_answer = false
  end
end

#run code
# garlic_bread_order
# garlic_bread_checker
# p @garlic_bread_answer

def insurance_checker
  if @healthinsurance_request == 'yes'
    @health_insurance_answer = true
  else
    @health_insurance_answer = false
  end
end

#run code
# health_insurance
# insurance_checker
# p @health_insurance_answer

# THIS WON"T accumulate an array.
def allergie_intake
  puts "Please, list all allergies, when your list is complete type 'done'."
  allergie_list = []
  allergie = nil
  until (allergie == "done" || allergie == "sunshine")
    allergie = gets.chomp.downcase
    allergie_list << allergie
    if @allergie == "sunshine"
      return puts "Probably a Vampire."
    end
  end
   puts "Applicant's allergies #{allergie_list}"
end

def vampire_checker
  if @allergie == "sunshine"
    return "Probably a vampire."
  elsif (@name == "Drake Cula" || @name == "Tu Fang")
    puts "Definitely a vampire."
  elsif (age_checker &&  (@garlic_bread_answer || @health_insurance_answer))
    puts "Probably not a vampire."
  elsif (age_checker && (@garlic_bread_answer || @health_insurance_answer)) == false
     puts "Probably a vampire."
  elsif (age_checker && @garlic_bread_answer && @health_insurance_answer) == false
     puts "Almost certainly a vampire."
  else
    puts "Results Inconclusive."
  end
end

def run_number
  puts "How many applicants are we interviewing today?"
  @number_applicants = gets.chomp.to_i
end

# #run code- returns fixnum
# run_number
# p @number_applicants.class


def question_run
  vampire_name
  vampire_age
  vampire_year_birth
  garlic_bread_order
  health_insurance
end

def question_checker_run
  age_checker
  garlic_bread_checker
  insurance_checker

  #WHY DO I HAVE TO WRITE THIS ON SPEREATE LINES? and can't insert it?
  puts "The outcome of this interview..." 

  vampire_checker
end



def run_loop
  current_year
  run_number
  @number_applicants.times do |x|
    applicant_refrence_number = (x + 1)
    puts "Applicant #{applicant_refrence_number} please answer the following questions"
    question_run
    allergie_intake
    question_checker_run
    puts "Thank you #{@name} your Application refrence number is #{applicant_refrence_number}."
  end
end
#driver code 
    




run_loop

#run code
# allergie_intake
















# #get intake details
# def current_year
#   puts "What year is it?"
#   @year = gets.chomp
# end

# def vampire_name
#   puts "What is you name?"
#   @name = gets.chomp
# end

# def vampire_age
#   puts "What is your age?"
#    @age = gets.chomp
# end

# def vampire_birth_year
#   puts "What is your year of birth?"
#   @birth_year = gets.chomp
# end

# def garlic_bread
#   puts "Would you like garlic bread from the cafateria? (yes or no)"
#   @garlic_order= gets.chomp
# end

# def health_insurance
#   puts "Would you like health insurance? (yes or no)"
#   @insurance_request = gets.chomp
# end

# #run all the intake questions at once
# def vampire_questions
#   vampire_name
#   vampire_age
#   vampire_birth_year
#   garlic_bread
#   health_insurance
#   allergie_checker
# end


# #validators for questions transforming them into true and false
# def birthday_validator
#   if (@year.to_i - @age.to_i == @birth_year.to_i)
#     true
#   else
#     false
#   end
# end

# def age_checker
#   if ((@age.to_i < 100) && birthday_validator)
#     true
#   end
# end

# def garlic_bread_validator
#   if @garlic_order == "yes"
#     true
#   else
#     false
#   end
# end

# def insurance_validator
#   if @insurance_request == "yes"
#     true
#   else 
#     false
#   end
# end


# def vampire_checker
#   if (age_checker && (garlic_bread_validator ||       insurance_validator))
#     puts "Probably not a vampire"
#   elsif ((age_checker && (garlic_bread_validator || insurance_validator)) || (allergie == "sunshine"))
#     puts "Probably a vampire"
#   elsif (age_checker && garlic_bread_validator && insurance_validator)
#     puts "Almost certainly a vampire."
#    elsif (@name == "Drake Cula" || @name == "Tu Fang")
#      puts "Definitely a vampire."
#    else
#      puts "results inconclusive."
#   end
# end




# def current_year
#    puts "What year is it?"
#    @year = gets.chomp.to_i
# end

# #this takes the place of run_program where you can extend it to the number of people you want to question

# def run_program_with_loop
#   puts "How many applicants will be intaked today? (Integer answer)"
#   number_times_run = gets.chomp
#   number_times_run = number_times_run.to_i
# 	year = current_year
# 	array = []
# 	number_times_run.times do |x|
# 		applicant = Vampire.new(year, "Applicant #{x}")
# 		array << applicant
# 		applicant.vampire_questions
# 	end

# 	array.each do |applicant|
# 		applicant.vampire_checker
# 	end
# end

# def allergie_checker
#   puts "Please, type your allergies below, type 'done' when your list is complete."
#   until allergie == "done" 
#     @allergie = gets.chomp.downcase
#     allergie_array = []
#     puts "Your allergies #{allergie_array.push(allergie)}"
#     if allergie == "sunshine"
#       return 
#     end
#   end
# end

  




# #to run the intake and test the answers given
# def run_program
#   year = current_year
#   applicant1 = Vampire.new(year, "Applicant 1")
#   applicant1.vampire_questions


#   applicant2 = Vampire.new(year, "Applicant 2")
#   applicant2.vampire_questions

#   applicant1.vampire_checker
#   applicant2.vampire_checker
# end




# #driver code
# run_program_with_loop
