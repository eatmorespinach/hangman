
# require 'pry'

class Hangman

  attr_accessor :turns_left

  def initialize
    words_array = ["bulls", "ted"]
    @word = words_array.sample        # is this the best place to put our picked word,
                                    # or should it be in a method?
    
    @word_array = @word.split(//)

    @game_board = []
    
    @word.length.times do |i|
      @game_board << "_"

    @turns_left = 11
    end
  end
    
  def game_board
    puts
    print @game_board
    puts 
    puts "turns left #{@turns_left}"
  end

  def guess(letter)
    if @word_array.include?(letter)
      @word_array.each_with_index {|let,index|
        if @word_array[index] == letter
          @game_board[index] = letter
        end
        }
    else turns_left
    end
  end

  def turns_left
    @turns_left -= 1
  end

  def winner?
    if @game_board == @word_array
      puts "YOU WINNNN!"
    end
  end
end

game = Hangman.new
game.turns_left
puts 
p "Welcome to hangman! Enter a letter guess:"


  until game.instance_variable_get(:@turns_left) > 0 || game.winner?
    game.game_board
    game.guess(gets.chomp)
    
    #get this to end when either turns_left expires or a game.winner is found?
    
  end