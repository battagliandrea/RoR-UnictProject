class StoreController < ApplicationController

  #METODO PER TROVARE IL CARRELLO RELATIVO ALLA SESSIONE CORRENTE
  #INCLUDEREMO PROPRIO IL CURRENT CART PER TROVARE IL CARRELLO NELLA SESSIONE
  include CurrentCart
  before_action :set_cart

  def index
    #STO CHIEDENDO UNA LISTA DEI CONTROLLER ORDINATA PER TITOLO
    @products = Product.order(:title)
  end
end
