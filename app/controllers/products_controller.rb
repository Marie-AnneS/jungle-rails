class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    #@reviews = Review.find params[:id]
  end

  def show
    @product = Product.find params[:id]
    @review = Review.new
  end

end
