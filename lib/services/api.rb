class Api
  
    def self.baseUrl
        "http://www.recipepuppy.com/api/"
    end
    def self.loadRecipes
        response = RestClient.get baseUrl
        data = JSON.parse(response.body)
        #binding.pry
        data["results"].each do |element|
       
            Recipes.new(element["title"],element["ingredients"])
            
        end

    end

    def self.loadData
        loadRecipes
       #binding.pry
    end


end
