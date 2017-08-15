# THIS GAME WILL GUESS WHART NUBER YOU HAVE ENTERED VIA STRDIN.
# TO DO LIST:
# - BUILD INPUT FUNCTION.
# - BUILD RANDOM NUMBER GENERATOR FUNCTION.
# - BUILD GUESS FUNCTION LOOPS & STATEMENTS.


user_number = gets.chomp.to_i
guesses = 1
answer = false

def gen_random
	while (answer == false) && (guesses <= 99)
		r = Random.new
		random = r.rand(1..100)

			if (random == user_number)
				puts "I got it! The number was #{random}! It took me #{guesses} gussesS"
				answer = true
				break				 
				elsif (gusses == 100)
					puts "I am sorry! I have taken 100 gussers and still couldnt wokr it out!"
					break
				else 
					gusses += 1
				end
				end
			end
	end
end

user_number
puts gen_random