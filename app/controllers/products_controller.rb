class ProductsController < ApplicationController
  def index
    @products = Product.order(:name).page params[:page]
    # @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
end
