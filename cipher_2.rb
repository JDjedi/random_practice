def cipher(arg)
	final_array = []
	if arg.length > 0
		foo = arg.downcase.split(//)
		foo.each do |x|
			c = x.ord + 5
			if c > 122
				c = (c - 122) + 96
				c = c.chr
				final_array << c
			else
				c = c.chr
				final_array << c
			end
		end
		puts final_array.join
	else 
		puts "There is nothing to cipher"
	end
end

cipher("Why do I want what I cant have?")