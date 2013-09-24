# require 'pry'

class Hangman

  attr_accessor :game_board, :word_array

  def initialize
    words = ["bulls", "ted"]
    @word = words.sample        # is this the best place to put our picked word,
                                # or should it be in a method?    
    @turns_left = 10
  end
    
  def initial_board
    @game_board = []
    
    @word.length.times do |i|
      @game_board << "_"
    end
    puts
    print @game_board
    puts
  end

  def show_board
    print @game_board
    puts
  end

  def guess(letter)
    @word_array = @word.split(//)
    if @word_array.include?(letter)
      @word_array.each_with_index {|let,index|
        if @word_array[index] == letter
          @game_board[index] = letter
        end
        }
    else 
      @turns_left -= 1
    end
  end

  def display_turns
    puts 
    puts "turns left #{@turns_left}"
    puts
    puts
  end

  def winner
    if @game_board == @word_array
      puts "YOU WIN!"
    elsif @turns_left == 0
      puts "Sorry, you lose. the word was #{@word}"

    end
  end
end



class Runner
  def self.run
    @game = Hangman.new
    puts 
    p "Welcome to hangman! Enter a letter guess:"

    @game.initial_board

    while true
      @game.guess(gets.chomp)
      @game.display_turns
      @game.show_board
      @game.winner
    end
  end
end

Runner.run

  
  #QUESTIONS 
  #1 - Breaking out of winner method. 
  #2 - Confirm usefullness of attr_accessor
  #3 - Important refactoring for clean code
  #4 - Would you recommended I use self. anywhere?







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
    
  