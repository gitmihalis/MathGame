# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, 
# the game should announce who won and what the other player’s score is.

# Nouns: Player, turn, question, match
=begin
 - Player
 	* has lives
 	* keeps score

 - Match
 	* keeps track of who the current player
 	* Has a winner?

 - Question
 	* will pick 2 numbers between 1 - 20
 	* will have a correct anser
=end

require "./match"
require "./player"
require "./question"

p1 = MathGame::Player.new('Ayesha')
p2 = MathGame::Player.new('Marcos')

match = MathGame::Match.new(p1, p2)
match.begin



