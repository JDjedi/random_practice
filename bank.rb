class Bank

	class AccountMaker
		attr_accessor :account_number, :name, :balance, :pin

		def initialize(account_number, name, balance, pin)
			@account_number = account_number
			@name = name
			@balance = balance
			@pin = pin
		end
	end

	attr_accessor :int_account_number, :int_account_pin

	def initialize
		@accounts = {}
		@int_account_number = int_account_number
		@int_account_pin = int_account_pin
	end

	def add_account(account_number, name, balance, pin)
		@accounts[account_number] = AccountMaker.new(account_number, name, balance, pin)
	end

	def account_test
		@accounts[1234567]
	end

	def login_screen

		def account_number_login
			puts "Please enter your 7 digit account number."
			account_number = gets.chomp
			int_account_number = account_number.to_i

			if @accounts.has_key?(int_account_number) and (/^\w{7}$/ === account_number)
				thank_you_msg()
				pin_login(int_account_number)
			else
				error_msg()
				account_number_login()
			end
		end

		def pin_login(int_account_number)
			puts "Please enter your 4 digit pin."
			account_pin = gets.chomp
			int_account_pin = account_pin.to_i #May have to use this later

			#puts int_account_number, int_account_pin

			if (What Should go here?) == int_account_pin #(/^\d{4}$/ === account_pin) 
				thank_you_msg
				#main_menu()
			else
				error_msg()
				pin_login(int_account_number)
			end
		end

		account_number_login()
	end

	def main_menu
		puts "Hi and welcome to Software Bank."
		puts "Would you like to make a deposit or withdrawl?"
		option = gets.chomp
		option.downcase!

		if option == "deposit"
			deposit()
		elsif option == "withdrawl"
			withdrawl()
		else
			error_msg()
			main_menu()
		end

	end

	def deposit
		puts "How much would you like to deposit?"
		deposit_amount = gets.chomp

		if deposit_amount.match(/\D+/)
			error_msg()
			deposit()
		else
			puts "----------------------------"
			puts "You deposited $#{deposit_amount}"
			puts "----------------------------"
			main_menu()
		end
	end

	def withdrawl
		puts "How much would you like to withdrawl?"
		puts "You may only withdrawl in increments of 10."
		withdrawl_amount = gets.chomp

		if withdrawl_amount.match(/\D+/)
			error_msg()
			withdrawl()
		else
			int_withdrawl_amount = withdrawl_amount.to_i
			if (int_withdrawl_amount % 10) != 0
				error_msg()
				withdrawl()
			else
				puts "----------------------------"
				puts "Your money will now be despensed"
				puts "----------------------------"
				main_menu()
			end
		end
	end

	def error_msg
		puts ""
		puts "----------------------------"
		puts "Please enter a valid option"
		puts "----------------------------"
		puts ""
	end

	def thank_you_msg
		puts "----------------------------"
		puts "Thank you."
		puts "----------------------------"
	end

end

bank_login = Bank.new
bank_login.add_account(1234567, "Jonathan Diaz", 500000000, 1234)
bank_login.add_account(3344567, "Hugo Ramierez", 7234340, 3344)
bank_login.add_account(9830432, "Sergio Rodriguez", 12000000, 4781)
bank_login.add_account(2345223, "Monica Viramontez", 320000000, 3812)
bank_login.account_test
#bank_login.login_screen()

