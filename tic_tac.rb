################################################################################################################################################
################################################################################################################################################
#
#      Introduction
#      Remember Tic Tac Toe? See Wikipedia if you can’t remember the rules, or if you haven’t ever played. It involves a couple of players,
#      a simple board, checking for victory in a game loop… all the conditions that make it a fun little problem to solve using our newfound 
#      OOP sea legs. Let’s build it!
#      
#      Assignment
#      Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.
#      
#      Think about how you would set up the different elements within the game… What should be a class? Instance variable? Method? A few minutes of 
#      thought can save you from wasting an hour of coding.
#      Build your game, taking care to not share information between classes any more than you have to.
#      Post your solution below, then check out the example solution provided.
#      Additional Resources
#      This section contains helpful links to other content. It isn’t required, so consider it supplemental for if you need to dive deeper into 
#      something.
#      
#      Not directly helpful, but here are some Ruby game libraries for fun.
#      A walkthrough of how to build Tic Tac Toe in Ruby from the codequizzes blog.
#      An example solution on RosettaCode.org
#      
#
################################################################################################################################################
################################################################################################################################################

# Ask to start the game
# If Y start 
# Create players -> Ask name and symbol
# Setup clean board
# Display the board
# Ask for a position where to move the piece
# Do the movement if possible and return the result
# Loop until board full


require_relative 'game.rb'

def main 
   Game.new
end  

main

