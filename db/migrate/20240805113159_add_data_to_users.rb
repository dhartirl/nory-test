class AddDataToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :dob, :date
    add_column :users, :iban, :string
    add_column :users, :bic, :string
    add_column :users, :role, :integer
  end
end
