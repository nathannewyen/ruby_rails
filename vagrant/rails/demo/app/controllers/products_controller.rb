class ProductsController < ApplicationController
  def index
    @products = Product.all
    if errors?  # this is not a built-in method. Assume that errors? returns true if something is wrong!
      flash[:error] = "You have errors"
      redirect_to '/users/' #pathing will be explained later
    else
      flash[:success] = "You did it!"
      redirect_to '/users/'
    end
  end

  def create
    @product = Product.create( name: params[:name], description: params[:description])
    redirect_to '/products/index'
  end

  def new
  end
end
