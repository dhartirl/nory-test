class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items
  has_many :recipes, through: :items
  has_many :recipe_ingredients, through: :recipes

  def total_ingredients
    recipe_ingredients.joins(:ingredient).group({ :ingredient_id, ingredients: :name }).sum(:quantity)
  end

  def confirm!
    update!(confirmed: true)
  end
end
