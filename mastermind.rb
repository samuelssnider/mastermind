require './lib/game_board'
require './lib/message_printer'

class MasterMind
	include MessagePrinter
	def initialize
		runner
	end
	
	def runner
		welcome_message
		@board = GameBoard.new
		until victory
			user_turn(user_command)
		end
	end
	
	def user_command
		gets.chomp
	end
	
	def victory
		false
	end
	
	def user_turn(user_in)
		until user_in == "p"
			case user_in
			when "p"
				modes
			when "i"
				instructions
			when "q"
				quit_message
				exit
			else
				play_instr_quit_msg(user_in)
			end
			user_in = user_command 
		end
	end
	
		
end




if __FILE__ == $0
  m = MasterMind.new
end
