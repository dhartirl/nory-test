class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :unit
      t.decimal :cost

      t.timestamps
    end
  end
end
