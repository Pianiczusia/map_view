class AddAtributesToAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :first_name, :string
    add_column :accounts, :last_name, :string
    add_column :accounts, :dob, :date
  end
end
