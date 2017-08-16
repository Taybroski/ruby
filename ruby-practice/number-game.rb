# THIS GAME WILL GUESS WHART NUBER YOU HAVE ENTERED VIA STRDIN.
# TO DO LIST:
# - BUILD INPUT FUNCTION.
# - BUILD RANDOM NUMBER GENERATOR FUNCTION.
# - BUILD GUESS FUNCTION LOOPS & STATEMENTS.




def gen_random

	print "Guess a number between 1 and 100: "
	user_number = gets.chomp.to_i
	guesses = 1
	answer = false


	while (answer == false) && (guesses <= 99)
		# r = Random.new
		random = Random.rand(1..100)
		
		if (random == user_number)
			answer = true
			puts "I got it! The number was #{random}! It took me #{guesses} guesse(s)!\nWould you like to play again? (ENTER/y/n)"
			play_again = gets.chomp
				if play_again == "y" || play_again == "n" || play_again == ""
					answer = true
					gen_random()
				else
					answer = false
					break
				end
			elsif (random != user_number)
				guesses += 1
				random
				else (guesses == 100)
					puts "I am sorry! I have taken 100 guesses and still couldn't work it out!"
					break
		end
	end
end


# user_number
gen_random()