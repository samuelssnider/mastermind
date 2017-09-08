require './lib/game_board'
require './lib/message_printer'

class MasterMind
	include MessagePrinter
	def initialize
		runner
	end
	
	def runner
		welcome_message
		@game_board = GameBoard.new
		user_start(user_command)
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
	
	def user_start(user_in)
		until user_in == "p"
			case user_in
			when "p"
				placement_message
				break
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
	
	def user_turn(command)
		valids = ['r','g','b','y']
		guess_request(@game_board.board_length)
		until command.split(" ").count == @game_board.board_length && command.split(" ").all? {|command| valids.include?(command)}
			invalid_guess_request
			command = user_command
		end
		guess_analysis(command.split)
	end
	
	def guess_analysis
	
		
end




if __FILE__ == $0
  m = MasterMind.new
end
