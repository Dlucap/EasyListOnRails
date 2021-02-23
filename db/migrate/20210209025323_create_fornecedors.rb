class CreateFornecedors < ActiveRecord::Migration[6.0]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :nome_fantasia
      t.string :cnpj
      t.string :cep
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :endereco
      t.integer :numero

      t.timestamps
    end
  end
end
