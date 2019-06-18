class ReviewsController < ApplicationController
#@@@ voir pense rien
  def show
    @reviews = Review.all
  end

  def create 
    @product = Product.find(params[:product_id])
    patate = params.require(:review).permit(
      :rating,
      :description
      )
      puts patate.inspect
      
      @review = @product.reviews.create(
        rating: patate[:rating],
        description: patate[:description],
        user: current_user
        )
        @review.save!
        redirect_to @product
        
  end

end
