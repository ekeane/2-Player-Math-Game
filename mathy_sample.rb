RANGE = (1..20)
@player1 = 3
@player2 = 3

def game
  while @player1 > 0 && @player2 > 0 do
    game_setup
    prompt_player_for_answer
    verify_answer ? good_answer : wrong_answer
  end
  final_result
end

def game_setup
    @num1 = rand(RANGE)
    @num2 = rand(RANGE)
    @turn == 1 ? @turn = 2 : @turn = 1
    @turn == 1 ? @player = "Player 1" : @player = "Player 2"
end


def prompt_player_for_answer
puts "#{@player}: What does #{@num1} plus #{@num2} equal?"
@answer = gets.chomp.to_i
end

def verify_answer
  good_answer = @num1 + @num2
  @answer == good_answer
end

def good_answer
  puts "Good job Einstein!"
end

def wrong_answer
  puts "You're WRONG" 
    if @turn == 1 
      @player1 -= 1
      puts "You have #{@player1} lives left, Player 2 has #{@player2} left."
    else
      @player2 -= 1
      puts "You have #{@player2} lives left, Player 1 has #{@player1} left."
    end  
end

def final_result
  puts "Player 1 loses\nGood job Player 2!" if @player1 == 0
  puts "Player 2 loses\nGood job Player 1!" if @player2 == 0
end


game