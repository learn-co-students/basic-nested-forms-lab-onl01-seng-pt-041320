class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients
end

# <%= render 'form', recipe: @recipe %>