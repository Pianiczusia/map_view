class RemoveAdminFromAccounts < ActiveRecord::Migration[7.0]
  def change
    remove_column :accounts, :admin, :boolean
  end
end
