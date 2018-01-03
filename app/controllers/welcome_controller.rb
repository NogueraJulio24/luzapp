class WelcomeController < ApplicationController
  def index
    @products = Product.all
    @category = Category.all
    @clients = Client.all
  end
end
