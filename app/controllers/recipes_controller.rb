class RecipesController < ApplicationController
  def index
    recipe = Recipe.all.order(created_at: :desc)
    render json: recipe
  end

  def create
    recipe = Recipe.create!(recipe_params)
     if recipe
       render json: recipe
     else
       render json: recipe.errors
     end
  end

  def show
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    recipe&.destroy
    render json: { message: 'Recipe deleted!' }
  end


  private

  def recipe_params
    params.permit(:dish, :image, :serves, :time, :ingredients, :method)
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end
end
