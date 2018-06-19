require './players.rb'
require './questions.rb'

class Game

def initialize
  player1=Players.new('Guan')
  player2=Players.new('Dave')
  @players = [player1, player2]
  @player_questions=Questions.new(@players)
end

  def game_over?
    @players.any? { |r| r.dead? }
  end

  def get_target(current)
    @players.select {|r| r != current}.sample
  end

  def swap_players
    @player_questions.next
  end

  def print_summary
    puts "SUMMARY"
    @players.each {|player| puts "\t#{player.summary}" }
  end
def play 
    while not game_over?
      current_player = @player_questions.current_player
      target_player = get_target(current_player)

      puts "It is #{current_player.name}'s turn"
      @player_questions.question
 #     current_player.@current_health

      print_summary
      swap_players
      sleep 0.5
    end
end
end
game = Game.new
game.play