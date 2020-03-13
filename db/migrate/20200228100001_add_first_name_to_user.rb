class AddFirstNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :surname, :string
    add_column :users, :dateofbirth, :date
  end
end
