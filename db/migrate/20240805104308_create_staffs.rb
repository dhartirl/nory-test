class CreateStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.date :dob
      t.references :role, null: false, foreign_key: true
      t.string :iban
      t.string :bic
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
