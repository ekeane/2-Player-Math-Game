print "Hello! Welcome to Eamonn's Math Game!!!"  " "


# Listed all variables



 @players = [{name: "Player 1", lives: 3},    
   {name: "Player 2", lives: 3 }]
 
 #math stuff 
 
 
 
 def question_response
 
   current = 0
 
   while   @players[0][:lives] >0 && @players[1][:lives] > 0 do 
     @range = (1..20)
     @num_1 = rand(@range)
     @num_2 = rand(@range)
     @correct_answer = @num_1 + @num_2
 
 
     puts "Hello #{@players[current][:name]}! What does #{@num_1} + #{@num_2} equal"
     answer = gets.chomp.to_i
 
     if  answer == @correct_answer 
       puts "Good job!"
 
     else 
       puts "Incorrect"  
        @players[current][:lives] -= 1 
        puts "You now have #{@players[current][:lives]} lives!"
 
     end 
 
     if current == 0 
       current = 1 
     else 
       current = 0 
 
     end 
   end
 
   puts "Sorry, #{@players[current][:name]} loses!"
 end 
 
 
 question_response 
