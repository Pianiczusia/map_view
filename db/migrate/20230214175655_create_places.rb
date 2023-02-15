class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places, id: :uuid do |t|
      t.string :name
      t.string :tags
      t.text :details
      t.string :image

      t.timestamps
    end
  end
end
