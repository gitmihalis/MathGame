module MathGame
	class Player

		attr_reader :name, :lives, :correct, :incorrect
		
		def initialize(name)
			@name = name
			@lives = 3
			@correct = []
			@incorrect = []
		end

		def lose_life
			@lives -= 1
		end

	end
end
