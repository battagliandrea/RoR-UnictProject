class Order < ActiveRecord::Base

  has_many :line_items, dependent: :destroy

  #METODO DI PAGAMENTO
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]

  #CREAZIONE CONTROLLI PER L'INSERIMENTO DI UN NUOVO ORDINE
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  #METODO CHE INSERISCE NELL'ORDINE GLI ARTICOLI DEL CARRELLO
  def add_line_items_from_cart(cart)
         cart.line_items.each do |item|
           #SETTIAMO A NULL L'ID DEL CARRELLO PER EVITARE CHE IL PRODOTTO SPARISCA UNA VOLTA TOGLIAMO IL CARRELLO
             item.cart_id = nil
             line_items << item
            end
        end
end
