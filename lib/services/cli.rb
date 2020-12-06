require "./lib/services/api"
class Cli
    def start
        puts "Welcome to recipe menu!!"
        Api.loadRecipes
        list_Recipes
    end

    def get_input
        puts ""
        puts "Select a recipe by the #"
        puts "To exit, type exit"
        gets.chomp
    end

    def list_Recipes
        Recipes.all.each.with_index(1) do |element, index|
            puts "#{index}. #{element.title}"
            
        end
        choose_menu
    end
  
    def choose_menu
    input = get_input
        if input.to_i.between?(1, Recipes.all.length)
            index = input.to_i - 1 
            puts "The ingredients are:"
            ingredients = Recipes.all[index]
            puts ingredients.ingredients
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
        
        puts "Select a recipe by the #"
        puts "To exit, type exit"
                
    end
    
    def exit_menu
        puts "Bye!"
        exit
    end

end

