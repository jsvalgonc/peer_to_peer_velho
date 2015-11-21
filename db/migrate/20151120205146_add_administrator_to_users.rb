class AddAdministratorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Administrator, :boolean
  end
end
