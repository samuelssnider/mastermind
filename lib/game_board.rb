class GameBoard
	attr_reader :board
	
	def initialize(difficulty = 4)
		@board = []
		board_setup(difficulty)
	end
	
	
	def board_setup(difficulty)
		possible = ["Red", "Green", "Blue", "Yellow"]
		difficulty.times do
			@board << possible.sample
		end
	end
			
		
end