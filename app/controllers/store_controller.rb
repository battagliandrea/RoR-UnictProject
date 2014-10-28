class StoreController < ApplicationController
  def index
    #STO CHIEDENDO UNA LISTA DEI CONTROLLER ORDINATA PER TITOLO
    @products = Product.order(:title)
  end
end
