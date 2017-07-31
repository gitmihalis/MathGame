module MathGame
	class Match
		
		def initialize(player1, player2)
			# player1, player2 are instances of Player
			@player1 = player1
			@player2 = player2
			@turn = 0
		end

		def begin
			puts "A new game has begun!"
			while @player1.lives > 0 || @player2.lives > 0 do
				self.new_turn(MathGame::Question.new())
			end
		end

		def new_turn(question)
			current_player = @turn % 2 == 0 ? @player2 : @player1
			question.ask(current_player)
			@turn += 1
		end

	end
end
