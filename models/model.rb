
class Answers
  attr_accessor :answer
  def initialize(params)
    @params = params
    @answer = {
      :science => 0,
      :tech => 0,
      :engineering => 0,
      :math => 0
      #:arts ==> 0
      }
  end

  def activity
    if @params[:activity] =="Nature Walks"
      #do whatever in here
      #:science = :science + 1
      @answer[:science] += 1
      #taking in the hash and calling the key, science, and adding one point to it
    elsif @params[:activity] == "Computer and Video Games"
      @answer[:tech] +=1
    elsif @params[:activity] == "Legos and Blocks"
      @answer[:engineering] += 1
    elsif @params[:activity] == "Puzzles"
      @answer[:math] += 1
      #not using else bc dont wanna add a point
    end
  end

  def dream
    if @params[:dream] =="quote1"
      @answer[:science] += 1
    elsif @params[:dream] == "quote2"
      @answer[:tech] +=1
    elsif @params[:dream] == "quote3"
      @answer[:engineering] += 1
    elsif @params[:dream] == "quote4"
      @answer[:math] += 1
    end
  end

  def inspire
    if @params[:inspire] =="quote11"
      #do whatever in here
      #:science = :science + 1
      @answer[:science] += 1
      #taking in the hash and calling the key, science, and adding one point to it
    elsif @params[:inspire] == "quote12"
      @answer[:tech] +=1
    elsif @params[:inspire] == "quote13"
      @answer[:engineering] += 1
    elsif @params[:inspire] == "quote14"
      @answer[:math] += 1
    end
  end

  def world
    if @params[:world] =="quote21"
      #do whatever in here
      #:science = :science + 1
      @answer[:science] += 1
      #taking in the hash and calling the key, science, and adding one point to it
    elsif @params[:world] == "quote22"
      @answer[:tech] +=1
    elsif @params[:world] == "quote23"
      @answer[:engineering] += 1
    elsif @params[:world] == "quote24"
      @answer[:math] += 1
    end
  end

  def organization
    if @params[:organization] =="Center for Disease Control"
      #do whatever in here
      #:science = :science + 1
      @answer[:organization] += 1
      #taking in the hash and calling the key, science, and adding one point to it
    elsif @params[:organization] == "Google"
      @answer[:tech] +=1
    elsif @params[:organization] == "NASA"
      @answer[:engineering] += 1
    elsif @params[:organization] == "Ernst and Young"
      @answer[:math] += 1
    end
  end

  def answer
    activity
    dream
    inspire
    world
    organization
  end

  def print
    @answer
  end

end #end of class
#   def results
#     #calculate your points to figure out which industry
#     answer = @answer.values
#     max = answer.max
#     result =[]
#     #looking through the hash for matches
#     @answer.each do |field,score|
#       if score == max
#         result.push(field)
#       end
#     end
#     return result
#   end
#   end

# end





# require 'net/http'
# require 'json'
# require 'rubygems'

# def get_data_from_api

# 	request_string = "https://controllerdata.lacity.org/resource/f3p3-3myx.json"

# 	sample_uri = URI(request_string) #opens a portal to the data at that link
# 	sample_response = Net::HTTP.get(sample_uri) #go grab the data in the portal
# 	sample_parsedResponse = JSON.parse(sample_response) #makes data easy to read

# 	#comes back as an array filled with hashes
# 	answer_array = sample_parsedResponse.map do |each_department|
# 		department_title = each_department["department_title"]
# 		female_average_salary = each_department["female_average_salary"]
# 		male_average_salary = each_department["male_average_salary"]
# 		"#{department_title} - The female average salary is #{female_average_salary} and the male average salary is #{male_average_salary}."
# 	end

# 	answer_array
# end




# def format_request_and_call_api(search_term)
# 	new_search_term = search_term.gsub(" ", "+")
# 	request_string = "http://api.giphy.com/v1/gifs/search?q=#{new_search_term}&api_key=dc6zaTOxFJmzC"

# 	sample_uri = URI(request_string) #opens a portal to the data at that link
# 	sample_response = Net::HTTP.get(sample_uri) #go grab the data in the portal
# 	sample_parsedResponse = JSON.parse(sample_response) #makes data easy to read
# 	# data comes back as a hash with info stored in key :data as an array
# 	data = sample_parsedResponse["data"]
# 	# data is now an array containing hashes of the gifs
# 	data.sample["images"]["fixed_height"]["url"]
# end





