class Journal

	attr_accessor :entry

	def initialize
		@journal = Array.new
		@time = Time.new
	end

	def main_menu
		puts "Welcome to your journal!"
		puts "Would you like to write or read an entry?"
		user_choice = gets.chomp
		user_choice.downcase!

		if user_choice == "write"
			space
			write
		elsif user_choice == "read"
			space
			read
		else
			puts "Please select a proper option: either read or write..."
			space
			main_menu
		end
	end

	def write
		journal_post = Hash.new

		puts "What's on your mind?"
		entry = gets.chomp
		journal_post[@time.inspect] = entry
		@journal << journal_post
		main_menu
	end

	def read
		@journal.each do |x|
			x.each do |key, value|
				puts key
				puts value
				puts ""
			end
		end
		space
		main_menu
	end

	def space
		puts ""
		puts "**********************************"
		puts ""
	end

end

jd_journal = Journal.new
jd_journal.main_menu 



