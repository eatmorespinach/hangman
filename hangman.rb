# require 'pry'

class Hangman

  def initialize
    words_array = ["bulls", "ted"]
    @word = words_array.sample        # is this the best place to put our picked word,
                                    # or should it be in a method?
    @word_array = @word.split(//)

    @game_board = []
    
    @word.length.times do |i|
      @game_board << "_"

    @turns_left = 10
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

puts 

p "Welcome to hangman! Enter a letter guess:"

  while true
    game.game_board
    game.guess(gets.chomp)
    if game.instance_variable_get(:@game_board) == game.instance_variable_get(:@word_array)
      puts
      puts "You Win! the word was #{game.instance_variable_get(:@word)}"
      game.game_board
      break
    elsif game.instance_variable_get(:@turns_left) == 0
      puts "you loooose"
      break
      #ask ben if question, and why break is invalide in winner method
    else
    end
  end

  
    #get this to end when either turns_left expires or a game.winner is found?
    
  