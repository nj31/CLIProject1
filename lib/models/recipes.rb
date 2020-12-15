class  Recipes
     attr_accessor :title, :ingredients 
    @@all = []
    def initialize(title, ingredients)
        @title = title
        @ingredients = ingredients
        @@all << self
    end
    def self.find_By_Title(title)
        @@all.find do |recipe|
        recipe.title.downcase ==  title.downcase

        # recipe has title
        # title argument
        end
    end
    def self.all
        @@all
    end

end