# Exercise 1)
# The ‘transfer_funds_to’ method is essentially dealing with two different bank accounts 
# (a.k.a. two bank account instances). How does it know which bank account to withdraw money 
# from and which bank account to deposit money to?

answer = <<-EOF
The two different bank accounts are indicated to the method as two different entities, 
1) self  
2) 'bank_account' argument.
The method defines the money transfer in a singular direction based on this relationship
as its name implies. "transfer_funds_to" -> argument account from the self account.
EOF

puts answer

# Exercise 2)
# Recreate the BankAccount in your own text editor.
# A) Add an attribute that indicates whether the account is a checking account,
#    a savings account, or a CD.
# B) Update the withdraw method so that if one withdraws money from a CD,
# 	 they also lose an additional 10% of the money they’re withdrawing due to penalties. For example, if one is withdrawing 10 dollars, they also get hit with a 1 dollar penalty. So if they were withdrawing 10 dollars from a CD that contained 100 dollars, they’d be left with 89 dollars.
# C) Update the transfer_funds_to method to ensure that one cannot transfer
#  	 funds from a CD or to a CD.

class BankAccount
	attr_reader :balance, :account_type

	def initialize(starting_balance)
		@balance = starting_balance
		@account_type = "savings"
	end

	def deposit(money)
		@balance += money
	end

	def withdraw(money)
		if money <= balance 
			if (account_type == "cd")
				withdrawal = money * 1.1
			else
				withdrawal = money
			end

			@balance -= withdrawal
			return withdrawal
		else
			return 0
		end
	end

	def transfer_funds_to(bank_account, money)
		if (@account_type.downcase == "cd" || bank_account.account_type.downcase == "cd")
			puts "You cannot transfer funds to or from a CD account."
		else
			bank_account.deposit(withdraw(money))
		end
	end

	def set_account_type(type)
		viable_types = ["checking","savings","cd"]
		if (viable_types.include?(type.downcase))
			@account_type = type
		else
			puts "You've entered an invalid type. Choose from one of the following:"
			viable_types.each do |valid_entry|
				puts valid_entry
			end
			print "Try Again : "
			input = gets.chomp
			set_account_type(input) # Recursion, doesn't stop till valid input is accepted
		end
		return account_type
	end

end

def get_balance(account_name, bank_account)
	puts "#{account_name} has : $#{'%.2f'%bank_account.balance}"
end

account1 = BankAccount.new(100)
account2 = BankAccount.new(0)
get_balance("Acc1",account1)
get_balance("Acc2",account2)

account1.transfer_funds_to(account2,25)
get_balance("Acc1",account1)
get_balance("Acc2",account2)

cd_account = BankAccount.new(50)
cd_account.set_account_type("dD")
get_balance("CD Account",cd_account)
cd_account.withdraw(10)
puts "After Withdrawal"
get_balance("CD Account",cd_account)
cd_account.transfer_funds_to(account2,10)

