class ProductsController < ApplicationController
  def index
    @products = 'unavailable'.in?(params.keys) ? Product.all : Product.available
  end
end
