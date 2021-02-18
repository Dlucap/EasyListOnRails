class CreateCompras < ActiveRecord::Migration[6.0]
  def change
    create_table :compras do |t|
      t.references :fornecedor, null: false, foreign_key: true
      t.datetime :data_compra
      t.timestamps
    end
  end
end

