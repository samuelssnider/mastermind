require './lib/game_board'
require 'minitest/pride'
require 'minitest/autorun'
class GameBoardTest < Minitest::Test
	
	def test_it_has_a_board_and_it_default_length_is_4
		gb = GameBoard.new
		assert gb
		assert_equal 4, gb.board.length
	end
	
	def test_board_can_have_a_differnt_length
		gb = GameBoard.new(8)
		assert_equal 8, gb.board.length
		gb = GameBoard.new(17)
		assert_equal 17, gb.board.length
	end
end