class AddQuantityToLineItems < ActiveRecord::Migration
  def change
    #STIAMO RENDENDO UGUALE AD UNO DI DEFAULT LA QUANTITÀ DI PRODOTTI ACQUISTATI
    add_column :line_items, :quantity, :integer, default: 1
  end
end
