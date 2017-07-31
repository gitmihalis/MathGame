module MathGame
	class Question

		def initialize
			@rand1 = rand(1..20)
			@rand2 = rand(1..20)
			@operator = [:+, :-].sample
		end

		def ask(player)
			puts "[->-> Question for #{player.name} <-<-]"
			puts "What is #{@rand1} #{@operator} #{@rand2} ?"
			player_answer = gets.chomp.to_i
			if player_answer == ( @rand1.send(@operator, @rand2) )
				puts "Good job. #{player_answer} is correct!"
			else 
				player.lose_life
				puts "What were you thinking? #{player_answer} is wrong."
			end
		end

	end
end