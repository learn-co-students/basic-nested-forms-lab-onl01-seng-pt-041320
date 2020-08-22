class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(id: 1)
    @recipe.ingredients.build(id: 2)
  end

  def create
    @recipe = Recipe.new(person_params)
    @recipe.save
    redirect_to recipes_path
  end

  private
  def person_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end
end
