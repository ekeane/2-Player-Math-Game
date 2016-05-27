# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program



# Filter to find ID's 

def find(id)

	@candidates.each do |candidate|

		return candidate if candidate[:id] == id
			
	end 
	nil
end 		


p find(1)


# Filter to find experience

def experienced?(candidate)

  candidate[:years_of_experience] >= 2 

end

p experienced?(@candidates[1])





#Filter for quality 

def qualified_candidates(candidates)


	qualified_candidates = []
	

	candidates.select do |candidate|

		 if experienced?(candidate) and 

			candidate[:github_points] >= 100 and 

			(candidate[:languages].include?("Ruby") or 

				candidate[:languages].include?("Python")) and 

			 15.days.ago.to_date <= candidate[:date_applied].to_date and 

			candidate[:age] >= 18

			qualified_candidates << candidate

		end
	end 

	return qualified_candidates	

end


p qualified_candidates(@candidates)








