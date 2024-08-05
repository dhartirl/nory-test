class CreateModifiers < ActiveRecord::Migration[7.1]
  def change
    create_table :modifiers do |t|
      t.integer :mod_type
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
