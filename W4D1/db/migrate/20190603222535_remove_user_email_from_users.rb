class RemoveUserEmailFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :email, :string
  end
end
