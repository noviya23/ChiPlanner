class AddOpenCloseTimesToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :places, :open_time, :time
    add_column :places, :close_time, :time
  end
end
