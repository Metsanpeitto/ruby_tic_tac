class Board
   attr_reader :board , :winner_symbol

   SOLUTIONS = [
      [true , true ,true, false, false, false, false, false, false ],
      [false, false, false, true , true ,true, false, false, false ],
      [false, false, false, false, false, false, true , true ,true,],
      [true, false, false, true, false, false, true, false, false],
      [false, true,  false, false, true,  false,  false, true, false],
      [false, false, true, false, false, true, false, false ,true,],
      [false, false, true, false, false, true, false, false ,true,],
      [true, false,  false, false, true, false,false, false ,true,],
      [false, false,  true, false, true, false,true, false ,false,]
   ]   

   def initialize 
     @board = [0,1,2,3,4,5,6,7,8]
     @winner_symbol = nil
   end
   
   
   def display_board

     puts "---------------------------"
     d_b =  %Q(
         #{board[0]} | #{board[1]} | #{board[2]}
        --- --- ---
         #{board[3]} | #{board[4]} | #{board[5]}
        --- --- ---
         #{board[6]} | #{board[7]} | #{board[8]}         
     )
     puts d_b
     puts "---------------------------"
    
   end 

    def move(symbol,position)
    # position equals a number and 
    # that number equals an index
    # Check if the position desired its free
    # If its, place a chip on there
    valid_answer = false
    while valid_answer == false
     if board[position].is_a? Numeric   
       board[position] = symbol  
       valid_answer = true
     else
      puts "Please enter a valid position"
      position = gets.chomp 
      position = position.to_i   
     end      
    end  
     check_board(symbol)
    end 

    def check_board(symbol)
     # Transform the board state into a logic
     # array showing its values
     logic_state = []
     @board.each do |v| 
      if v == symbol
       logic_state.push(true)
       else  
        logic_state.push(false)
      end   
     end  
     print logic_state
     SOLUTIONS.each do |s|
       if s == logic_state
         puts "Won"        
         @winner_symbol = symbol
       end
     end 
    end 
  end
   

 
  


   