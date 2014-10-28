#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
module CurrentCart
  #SALVIAMO IL METODO SET CART DENTRO CURRENT CART IN MODO DA RENDERLO DISPONIBILE TRA I CONTROLLER MA NON COME AZIONE
  extend ActiveSupport::Concern

  private

  #PRENDE IL cart_id DALL'OGGETTO SESSION E PROVA A TROVARE IL CARRELLO CORRISPONDENTE ALLA CHIAVE
  #SE NON TROVA UN CARRELLO ALLORA PROVVEDERÀ LUI STESSO A CREARNE UNO NUOVO
  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end