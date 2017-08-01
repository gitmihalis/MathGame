module MathGame
	class Question

		def initialize
			@rand1 = rand(1..20)
			@rand2 = rand(1..20)
			@operator = [:+, :-].sample
			@mocks = [
				"I think it's time you wen't back to school.",
				"Don't quit your day job.",
				"Was that a serious answer?",
				"No... just no.",
				"That answer made me physically ill.",
				"You parents must be so proud...",
				"You make others feel better about themselves..."
			]
		end

		def ask(player)
			puts "#{player.name}, what is #{@rand1} #{@operator} #{@rand2} ?"
			player_answer = gets.chomp.to_i
			puts "..."
			sleep(2)
			if player_answer == ( @rand1.send(@operator, @rand2) )
				puts "Good job #{player.name}. Your math is on point! 👌"
			else 
				player.lose_life
				puts "What were you thinking? #{player_answer} is so wrong 🤢"
				puts @mocks.sample
			end
			sleep(2)
			puts "- - -" * 8
		end

	end
end