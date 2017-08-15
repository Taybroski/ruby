class MyName

	def title
		print "Mr"
	end


	def forename
		print "Taylor"
	end


	def middle_name
		print "Elliott"
	end


	def surname
		print "Le Fustec"
	end

end

name = MyName.new
puts name.title
puts name.forename
puts name.middle_name
puts name.surname

# Below is the name of the object or the instance of the class 'MyName'.
# The numbers and letters are the 'Address in memory of the instantiated object'.

#<MyName:0x0056074686eb80>
