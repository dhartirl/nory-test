class Item < ApplicationRecord
  belongs_to :recipe, required: true
  belongs_to :modifier, required: false
  has_many :order_items
  has_many :orders, through: :order_items

  def name
    recipe.name
  end
end
