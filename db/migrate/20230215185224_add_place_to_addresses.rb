class AddPlaceToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :place, index: true, type: :uuid
  end
end
