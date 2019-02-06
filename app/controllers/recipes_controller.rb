class RecipesController < ApplicationController


  before_action :get_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @users = User.all
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    ids = params[:recipe][:ingredient_ids].select { |id| !id.empty?}
    ids.each do |id|
      @recipe.ingredients << Ingredient.find(id)
    end
    redirect_to recipe_path(@recipe)
  end

  def show
  end

  def edit
    @users = User.all
    @ingredients = Ingredient.all
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end


  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :ingredient_ids)
  end

end
