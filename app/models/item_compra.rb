class ItemCompra < ApplicationRecord
  belongs_to :compra
  belongs_to :produto
end
