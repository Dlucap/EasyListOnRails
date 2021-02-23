# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ItemCompra.destroy_all
Compra.destroy_all
puts 'Compras destruidas :)'
Fornecedor.destroy_all
Produto.destroy_all

puts 'Criando Fornecedor'
Fornecedor.create!(nome: 'Super Nosso')
#byebug

puts 'Criando Produto'
Produto.create!(nome: 'Feijão', marca:'Tia Jú')
puts 'Criando Compra'

Compra.create!(fornecedor: Fornecedor.last,data_compra: DateTime.now)
puts 'Criando ItemCompra'
ItemCompra.find_or_create_by!(compra: Compra.last,produto: Produto.last)
#ItemCompra.destroy_all
#ItemCompra.create(compra: Compra.last,Produto.last)