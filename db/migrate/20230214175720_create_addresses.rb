class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :line1
      t.string :line2
      t.string :country
      t.string :city
      t.string :state
      t.string :post_code

      t.timestamps
    end
  end
end
