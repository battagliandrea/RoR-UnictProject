class Cart < ActiveRecord::Base
  #AD UN CARRELLO POSSO ASSOCIARE PIÙ RIGHE D'ORDINE
  #INOLTRE CON LA CHIAMATA DESTROY LE RIGHE DIPENDONO DAL CARRELLO, SE DISTRUGGO IL CARRELLO DISTRUGGO ANCHE LE RIGHE
  has_many :line_items, dependent: :destroy

  #METODO CHE VERIFICA SE IL PRODOTTO È GIÀ PRESENTE NEL CARRELLO, IN MODO DA INCREMENTARNE IL NUMERO
  def add_product(product_id)
    #IL METODO find_by RESTITUISCE UN OGGETTO PRODUCT OPPURE null
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

  #METODO CHE CALCOLA IL PREZZO TOTALE DEGLI ARTICOLI DEL CARRELLO
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

end
