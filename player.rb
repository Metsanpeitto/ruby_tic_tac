class Player
  attr_reader :name
  attr_reader :symbol

  def initialize(name, symbol)
   @name = name
   @symbol = symbol
   puts "Player #{name} will use the symbol #{symbol}"   
  end 

end  




