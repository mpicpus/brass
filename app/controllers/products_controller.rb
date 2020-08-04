class ProductsController < ApplicationController
  def index
    @show_unavailable = 'unavailable'.in?(params.keys)
    @products = @show_unavailable ? Product.all : Product.available
  end
end
