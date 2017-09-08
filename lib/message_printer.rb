module MessagePrinter
	def welcome_message
    puts "Welcome to MASTERMIND \n \n"
		puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
	
	def quit_message
		puts "Thankyou for playing mastermind!"
	end
	
	def instructions
    puts "This is a computer version of the tabletop game MASTERMIND."
    puts "After setup, you try to figure out the position and order"
    puts "the computer has placed his pieces in guess corretly to win!"
	end
	
	def play_instr_quit_err_msg(user_command)
    puts  "\nYou typed '#{user_command}', sorry, that is not a valid command."
    puts  "Please try (p) - play, (i) - instructions, (q) - quit."
  end
end