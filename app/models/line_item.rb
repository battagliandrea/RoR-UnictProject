#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class LineItem < ActiveRecord::Base
  #CON IL SEGUENTE METODO CREO UN RIFERIMENTO ALLE TABELLE PRODOTTO E CARRELLO
  #INFATTI SE UNA TABELLA HA CHIAVI ESTERNE DEVE CONTENERE IL METODO BELONG_TO CHE FA RIFERIMENTO
  belongs_to :product
  belongs_to :cart
end