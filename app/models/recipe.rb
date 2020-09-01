class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients 
  
  #ingredients_attributes =[
    # {ingredient_2: "First Ingredient", ingredient_name: "Blah" },
    # {ingredient_2: "Second Ingredient", ingredient_name: "Meh" }
    #]

  #def ingredients_attributes=(ingredients_attributes)
    #ingredients_attributes.each do |ingredient_attributes|
      #self.ingredients.build(ingredient_attributes)
    #end
  #end

end
