def caesar_cipher(arg, arg2)

	final_array = []

	arg.each_char do |c|
		if /[A-Z]/.match(c) 
			c = c.ord + arg2
			if c > 90
				c = (c - 90) + 64
				c = c.chr
				final_array << c
			else
				c = c.chr
				final_array << c
			end

		elsif /[a-z]/.match(c) 
			c = c.ord + arg2
			if c > 122
				c = (c - 122) + 96
				c = c.chr
				final_array << c
			else
				c = c.chr
				final_array << c
			end

		elsif /[ ]/.match(c)
				final_array << c
		end
	end
	puts final_array.join
end

caesar_cipher("This Is tHe MesSAGe", 5)









