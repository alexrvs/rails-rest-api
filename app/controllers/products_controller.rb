class ProductsController < ApplicationController

  def index
    @products = Product.all()
    render json: {status: 200, data: @products}
  end

end
