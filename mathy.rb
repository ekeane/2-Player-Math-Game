require "colorize"
require_relative "players"
class Game

  attr_reader :players

  def initialize
    @num_players = 2
    @players = []
  end

  def create_players
    2.times do |i|
      puts "Enter the name of player \##{i+1}"
      name = gets.chomp
      @players << Player.new(name)
    end
  end


  def play

	 current = 0
   previous = 1

  	while Player.class_eval('@@all_alive') do
  		@range = (1..20)
  		@num_1 = rand(@range)
  		@num_2 = rand(@range)
  		@correct_answer = @num_1 + @num_2


  		puts "Hello #{@players[current].name}! What does #{@num_1} + #{@num_2} equal to?"
  		answer = gets.chomp.to_i

  		if 	answer == @correct_answer 
  			puts "Good job!".green
  		else 
  			puts "Incorrect, correct answer is #{@correct_answer}".red  
  			@players[current].lose_point
  			puts "You now have #{@players[current].lives} lives!" unless @players[current].lives == 0
  		end

      current, previous = previous, current

  	end

  	puts "Sorry, #{@players[previous].name} loses!"
  end

end 

puts "Game is starting"
new_game = Game.new
new_game.create_players
new_game.play
