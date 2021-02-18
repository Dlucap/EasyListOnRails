class CreateItemCompras < ActiveRecord::Migration[6.0]
  def change
    create_table :item_compras do |t|
      t.references :compra, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
