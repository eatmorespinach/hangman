# require 'pry'

class Hangman

  WORDS = ["bulls", "ted"]

  attr_accessor :board, :word, :turns_left

  def initialize
    @word = WORDS.sample
    @turns_left = 10
    @board = draw_board
  end

  def draw_board
    board = []
    @word.length.times do
      board << "_"
    end
    board
  end

  def place_letter_on_board(letter)
    @word.split(//).each_with_index do |let,index|
      @board[index] = letter if @word[index] == letter
    end
    @board
  end

  def win?
    !@board.include?("_")
  end       

end



class Runner
  def self.run
    @game = Hangman.new
    puts "\nWelcome to hangman! Enter a letter guess:"

    while @game.turns_left > 0
      print @game.board
      letter = gets.chomp

      if @game.word.include?(letter)
        @game.place_letter_on_board(letter)
      else
        @game.decrement_turn
      end
      if @game.win?
        puts
        puts "YOU WIN! The word was #{@game.word}"
        puts
        print @game.board
        puts
        return false
      end
      puts
      puts "turns left: #{@game.turns_left}"
      puts
    end
    puts "You lose. The word was #{@game.word}"
  end
end

Runner.run

  
  #QUESTIONS 
  #1 - Breaking out of winner method. 
  #2 - Confirm usefullness of attr_accessor
  #3 - Important refactoring for clean code
  #4 - Would you recommended I use self. anywhere?




# SKYPW WITH ALEX

# move all view actions into runner. 
# take logic out of initialize when refactoring


    #game.instance_variable_get(:@game_board) == game.instance_variable_get(:@word_array)
      # puts 
      # puts "You Win! the word was #{game.instance_variable_get(:@word)}"
      # game.display_board
      # break
    # elsif game.instance_variable_get(:@turns_left) == 0
      # puts "you loooose"
      # break
      # #ask ben if question, and why break is invalide in winner method
    # else
    # end
    
  