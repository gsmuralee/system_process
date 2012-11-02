class ProcessCollectController < ApplicationController
	
	def show
		
	end
	def get_process
		top_value = `top -b -n 1 | head -n 17  | tail -n 10` 
		result = top_value.split
                i =  0
		process = Hash.new
		result = result.each_slice(12).to_a
		p result
		result.each do | item |
                 process["#{result[i][9]}"] = result[i].last
		 i = i+1
	 end
	 @resultant_value = Hash[process.sort.reverse]
        end
 def get_process_cpu
		top_value = `top -b -n 1 | head -n 17  | tail -n 10` 
		result = top_value.split
                i =  0
		process = Hash.new
		result = result.each_slice(12).to_a
		p result
		result.each do | item |
                 process["#{result[i][8]}"] = result[i].last
		 i = i+1
	 end
	 @resultant_value = process
end
 
end

