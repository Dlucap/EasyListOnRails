# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_17_225000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compras", force: :cascade do |t|
    t.bigint "fornecedor_id", null: false
    t.datetime "data_compra"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fornecedor_id"], name: "index_compras_on_fornecedor_id"
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "nome_fantasia"
    t.string "cnpj"
    t.string "cep"
    t.string "estado"
    t.string "cidade"
    t.string "bairro"
    t.string "endereco"
    t.integer "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_compras", force: :cascade do |t|
    t.bigint "compra_id", null: false
    t.bigint "produto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["compra_id"], name: "index_item_compras_on_compra_id"
    t.index ["produto_id"], name: "index_item_compras_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "marca"
    t.string "nome"
    t.text "descricao"
    t.decimal "preco"
    t.integer "quantidade"
    t.integer "quantidade_estoque"
    t.date "validade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "compras", "fornecedors"
  add_foreign_key "item_compras", "compras"
  add_foreign_key "item_compras", "produtos"
end
