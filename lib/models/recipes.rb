class  Recipes
     attr_accessor :title, :ingredients 
    @@all = []
    def initialize(title, ingredients)
        @title = title
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

end