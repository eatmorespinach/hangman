#Notes
#  We can split a string into an array using:
#    arrayname = stringname.split("")


class Hangman
	LIST = ["canada", "england", "australia", "japan"]
  attr_accessor :word, :chances, :board, :list, :guesses, :answer

  def initialize()
    @chances = 8
    @guesses = []
    @word    = LIST.sample
    @board   = setup_board(@word)
  end
  
  # return @guesses as a string
  # ! Completed
  def guesses
  	return @guesses.join(", ")

  end
  
  # return a string of underscores equal to length of the given word
  # ! COMPLETED
  def setup_board(word)
  		boardstring = ""
  		@word.length.times do 
				boardstring << "_"
			end
			return boardstring.split("") # store the letters in board as an array
	end

  # return true if word has letter
  # ! COMPLETED (Drew, overview this)
  def word_has?(letter)
  	@word.index(letter) == nil ? false : true
  end

  # replace indexes of @board with letter where the same indexes of @word are letter
  # in other words, if @board is _ _ _ _ _ _ and @word is canada
  # and the letter guessed is a
  # then @board should become _ a _ a _ a
  # ! COMPLETED 
  def put_letter_on_board(letter)
    word_array = @word.split("")
    word_array.each_with_index do |element, index|
      if element == letter
        @board[index] = element
      end
    end
  end

  # decrement # of chances and add letter to guesses
  # ! Completed
  def wrong_letter(letter)
  	@chances -= 1
  	@guesses << letter
  end
  
  # if the word has the given letter, put it on the board, otherwise, it's a wrong guess
  # ! Completed? But what about the case where the wrong letter has already been guessed.
  # ! shouldn't we puts a message like "Try again! You've already guessed that letter."
  def guess(letter)
    if word_has?(letter)
    	put_letter_on_board(letter)
    elsif !@guesses.include? letter
      wrong_letter(letter) # if !@guesses.include? letter
    else
      puts "You've already guessed that letter! Try again!\n"
    end
  end

  # return true if @board doesn't have a '_', otherwise return false
  # ! COMPLETED
  def win?
    found_count = 0
    @board.each do |letter|
      if letter == '_'
        found_count = found_count + 1
      end
    end
    found_count == 0 ? true : false
  end

  # return true if @chances is 0, otherwise return false
  # ! COMPLETED
  def lost?
      @chances == 0 # using a ternary operator to return true/false
  end
  
end


