class WelcomeController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @clients = Client.all
    @providers = Provider.all
    #This is a SQL consult, for to puts in the grafic
    #@products_count = Brand.includes(:products).group("products.brand_id").pluck("brands.name, count(products.id)")
  end
end
