require 'test/unit'

require_relative '../runhangman'

class TestHangman < Test::Unit::TestCase

	def setup

		#method with shared setup that can be called for all methods. 
		#these must be instance variables (@bob) for other classes to access. 
	end


	# def test_a_word
	# 	assert_equal "abletay", Piglatin.convert("table")
	# end


	def test_numbers_are_not_allowed
		assert_equal "please enter a valid letter.", Hangman(55)

		#how come I get an error when I solve hangman?
	end

end