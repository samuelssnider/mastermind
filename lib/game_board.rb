class GameBoard
	attr_reader :board
	
	def initialize(difficulty = 4)
		@board = []
		board_setup(difficulty)
	end
	
	
	def board_setup(difficulty)
		possible = ["r", "g", "b", "y"]
		difficulty.times do
			@board << possible.sample
		end
	end
	
	def board_length
		@board.length
	end
			
		
end