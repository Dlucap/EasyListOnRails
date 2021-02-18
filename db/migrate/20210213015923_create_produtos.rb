class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :marca
      t.string :nome
      t.text :descricao
      t.decimal :preco
      t.integer :quantidade
      t.integer :quantidade_estoque
      t.date :validade

      t.timestamps
    end
  end
end
