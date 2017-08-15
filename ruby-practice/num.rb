
# x = 1
# while x <= 10
#    puts "#{x} * 2 = #{x*2}";
#     x = x + 1
# end

# x = 1;
# while x <= 10
# 	puts "#{x} * 2 = #{x*2}"
# 	x = x + 1
# end	

#tt = times table
#x = number 
def multiplier(i)
	x=1
	while x <= 10
		puts "#{i} * #{x} = #{x*i}";
		x = x + 1;
	end
end

print "Please select which times table you would like to multiply 1 by: ";
n = gets.chomp.to_i;

multiplier(n)

	if n == -1
		for y in 1..12
			multiplier(y)
		end
	else
		multiplier(n)
end
