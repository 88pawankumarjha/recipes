class ReviewsController < ApplicationController

  # POST /reviews
  # POST /reviews.json
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.create(params[:review])

    redirect_to recipe_path(@recipe)

  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])
    @review.destroy

    redirect_to recipe_path(@recipe)
  end
end
