class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :modifier, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
