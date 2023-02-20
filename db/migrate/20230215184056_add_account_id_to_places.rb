class AddAccountIdToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_reference :places, :account, index: true, type: :uuid
  end
end
