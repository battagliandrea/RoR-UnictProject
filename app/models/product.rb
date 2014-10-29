class Product < ActiveRecord::Base

  #IN QUESTO MODO DICHIARO CHE CI SONO DELLE RELAZIONI
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item


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


  #STO CREANDO UN METODO HOOK CHE VIENE CHIAMATO IN UN MOMENTO DI VITA SPECIFICO DELL'OGGETTO
  #VIENE CHIAMATO PER EVITARE DI ELIMINARE DAL DATABASE I PRODOTTI CHE SONO SEGNATI COME RIGHE D'ORDINE
  private

  # Assicuratevi che non esistano righe d'ordine che fanno riferimento
  # a questo prodotto
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
