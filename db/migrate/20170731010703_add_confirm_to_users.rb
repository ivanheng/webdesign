class AddConfirmToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :confirm, :string
  end
end
