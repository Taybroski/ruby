# 80 dash '-' divider method.
def divider
	puts "\n----------------------------------------------------------------------"
end

	# if answer != "n" || answer != "y"
	# puts "Oops, please type 'y' or 'n'."
	# answer
	# end


# The question method, allows questions to be asked.
def ask(question, kind="string")
	print question + ""
	answer = gets.chomp
	answer = answer.to_i if kind == "number"
	return answer
end

# The adding a contact method, allows contact name and number to be added.
def add_contact
	contact = {
		name: "", 
		phone_numbers: []
	}
	contact[:name] = ask("Please enter contact name: ")
	answer = ""

	while answer != "n"
		answer = ask("Enter contact mobile number? (y/n): ")
		if answer == "y"
			phone = ask("Enter number: ")
			contact[:phone_numbers].push(phone)
		end
	end
	return contact
end

# Contact list array, where all info will be stored at the end.
contact_list = []

answer = ""
while answer != "n"
	contact_list.push(add_contact())
	answer = ask("Add another contact?: ")
end

contact_list.each do |contact|
	print "Name: #{contact[:name]}\t"
	if contact[:phone_numbers].length > 0
		print "Number: #{contact[:phone_numbers]} "
		else print "Number: NIL."
	end
end

print divider()
