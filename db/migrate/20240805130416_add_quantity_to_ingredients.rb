class AddQuantityToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_column :ingredients, :quantity, :decimal, default: 0
  end
end
