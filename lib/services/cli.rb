require "./lib/services/api"
class Cli
    def start
        puts "Welcome to recipe menu!!"
        Api.loadRecipes
        list_Recipes
    end

    def get_input
        puts ""
        puts "Select a recipe by the # or exact spelling of name!"
        puts "To exit, type exit"
        gets.chomp
    end

    def list_Recipes
        Recipes.all.each.with_index(1) do |element, index|
            puts "#{index}. #{element.title}"
            
        end
        choose_menu
    end
  
    def ingredients_Are(input)
        index = input.to_i - 1 
        puts "The ingredients are:"
        recipes = Recipes.all[index]
        puts recipes.ingredients
        choose_menu
    end
    def ingredients_Are_Name(input)
        
        puts "The ingredients are:"
        recipes = Recipes.all[title]
        puts recipes.ingredients
        choose_menu
    end
    def searchByString
        recipes = Recipes.all[title]
       # recipes.each {|str| return str if str.include("Ginger Champagne")}
        puts recipes.ingredients
    end
    def choose_menu
        
    input = get_input
    #binding.pry
    if input.to_i.between?(1, Recipes.all.length)
            ingredients_Are(input)
        elsif  recipes = Recipes.find_By_Title(input)
            puts recipes.ingredients
            choose_menu
        elsif input == "exit" 
            exit_menu
        else
            invalid_Choice
        end
        
    end
    
 

    def list_Ingredients
            Recipes.all.each.with_index(1) do |element, index|
            puts "#{index}. #{element.ingredients}"
        end
       
    end
    
    def invalid_Choice
        puts ""
        puts "This isn't a valid input."
        puts ""
        list_Recipes
        
        puts "Select a recipe by the # or exact spelling of name!"
        puts "To exit, type exit"
                
    end
    
    def exit_menu
        puts "Bye!"
        exit
    end

end

