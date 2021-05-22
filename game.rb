# This file will hold the different steps requires for the game
require_relative 'board.rb'
require_relative 'player.rb'

class Game
 def initialize
  @loop_count = 1
  @won_flag = false
  @end_game = false
  @board = nil
  intro
 end   
 
 def intro
   puts "Do you want to play? Press Y or N"
   # response =  gets.chomp
   response =  "Y"
   response.downcase!  
   if response == "y"
    start
   end     
 end

 def start  
   @won_flag = false
   players = create_players   
   @game_board = Board.new
   @game_board.display_board
   while @won_flag == false 
       rounds
   end 

   puts "Press Y if you want to play again or any other key if you want to close"
   response =  gets.chomp
   response.downcase!

   if response == "y"  
    puts "Jump to restart"  
    restart
    else
    puts "Bye Bye !"    
   end 

 end

 def restart
  puts "-- Restart --"
  @loop_count = 1
  @won_flag = false
  @board = nil
  intro
 end 

 def create_players
  player_1 = nil
  player_2  = nil 
  puts "What is the name of the first player?"
  #name_1 = gets.chomp
  name_1 = "Me"
  puts "What is the symbol of the first player? X or O"
  #symbol_1 = gets.chomp
  symbol_1 = "X"
  puts "What is the name of the second player?"
  #name_2 = gets.chomp 
  name_2 = "You"
  if symbol_1 == "X"
   symbol_2 = "O"
  else
   symbol_2 = "X"    
  end  
  
  @player_1 = Player.new(name_1, symbol_1)
  @player_2 = Player.new(name_2, symbol_2)

 end 

 def rounds
    if @loop_count % 2 == 0
      player = @player_2
     else
      player = @player_1   
    end 

    puts "#{player.name} where do you want to place your chip?"
    position = gets.chomp
    position = position.to_i 
    round(player, position)
    @loop_count += 1    
    end_game = @game_board.winner_symbol
    if end_game != nil
      puts "Player #{player.name} won this game !"
      @won_flag = true
      puts @won_flag
    end  
    
 end  
 
 def round(player,position)
    @game_board.move(player.symbol,position)
    @game_board.display_board  
 end   

end    