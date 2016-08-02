class Person
	attr_accessor :name, :age, :gender

	def say_hello
		puts "Hello!"
	end

	def music
		puts "What are you listening to now?"
		answer = gets.chomp
		if answer
			puts "Cool, " + answer + " is awesome"
		else
			puts "Not listing to music? Thats ok too!"
		end
	end

end

JD = Person.new
JD.name = "JD"
JD.age = 26
JD.gender = "M"
puts JD.say_hello, JD.music