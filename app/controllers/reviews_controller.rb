class ReviewsController < ApplicationController

  def new
    @cocktails = Cocktail.find(:cocktail_id)
    @reviews = Review.new
  end

  def create
    @cocktails = Cocktail.new(:cocktail_id)
    if @reviews.save
      redirect_to review_path(@review)
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @reviews.destroy
    redirect_to reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :cocktail_id)
  end
end
