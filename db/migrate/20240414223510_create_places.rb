class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :title
      t.string :image
      t.text :description
      t.string :location
      t.string :source_link

      t.timestamps
    end
  end
end
