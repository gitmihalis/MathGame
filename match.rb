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
		end

		def new_turn(question)
			@turn += 1
			question.ask
			answer = gets.chomp
			question.evaluate(answer)
		end

	end
end
