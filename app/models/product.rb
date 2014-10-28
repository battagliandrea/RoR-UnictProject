class Product < ActiveRecord::Base

  #OGNI FORM DEVE CONTENERE QUALCOSA PRIMA DI POTER AGGIUNGERE
  validates :title, :description, :image_url, presence: true
  #CONTROLLA L'UNITICOTÀ DEL TITOLO
  validates :title, uniqueness: true
  #CONTROLLA CHE L'URL DELL'IMMAGINE FINISCA CON GIF, JPG, PNG
  #CON LA FUNZIONE allow_blank eviteremo che siano visualizzati più messaggi di errore
  validates :image_url, allow_blank: true, format: {
      with:   %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
  #CONTROLLO CHE IL PREZZO SIA SEMPRE UN NUMERO POSITIVO MAGGIORE DI 0.01
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

end
