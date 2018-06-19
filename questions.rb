class Questions
  def initialize(players)
    @players = players.shuffle
	@num1
	@num2  
	@playerAnswer #= gets.chomp
  end

  def current_player
    @players[0]
  end

  def next
    @players.rotate!
  end
def question
	@num1=rand(20)+1  
	@num2=rand(20)+1
    puts "what does #{@num1} plus #{@num2} equal?" 
	@playerAnswer= gets.chomp.to_i
	if correct?
    puts "#{current_player.name} is Correct 😡"
	else
 	puts "#{current_player.name} is Incorect! :("
	current_player.current_health-=1
	end
end

def correct?
 @playerAnswer==@num1+@num2
end
end