class AddAddressToLocation < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :address, index: true, type: :uuid
  end
end
