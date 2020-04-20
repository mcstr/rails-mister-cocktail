class ReviewsController < ApplicationController

  def new
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktail_path(@cocktail)

    end

  private

  def review_params
    params.require(:review).permit(:rating)
  end



  # def new
  #   @review = Review.new
  # end

  # def create
  #   @review = Review.new(review_params)
  #   @review.user = current_user
  #   if @review.save
  #     redirect_to new_review_path
  #   else
  #     flash[:alert] = "Something went wrong."
  #     render :new
  #   end
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:rating)
  # end



end
