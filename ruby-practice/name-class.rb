class Name

	# attr_reader :title, :forename, :middle_name, :surname
	# attr_writer :title, :forename, :middle_name, :surname
	attr_accessor :title, :forename, :middle_name, :surname


	def initialize(title, forename, middle_name, surname)
		@title = title
		@forename = forename
		@middle_name = middle_name
		@surname = surname
	end


	def full_name
		@title
		@forname
		@middle_name
		@surname
	end


# Definitions can be written individually, or they can be put
# into one Definition and called as is. SEE ABOVE.

	# def title=(new_title)
	# 	@title = new_title
	# end


	# def forname=(new_forename)
	# 	@forename = new_forename
	# end


	# def middle_name=(new_middle_name)
	# 	@middle_name = new_middle_name
	# end


	# def surname=(new_surname)
	# 	@surname = new_surname
	# end

end

name = Name.new("Mr", "Taylor", "Elliott", "Le Fustec")
puts name.full_name