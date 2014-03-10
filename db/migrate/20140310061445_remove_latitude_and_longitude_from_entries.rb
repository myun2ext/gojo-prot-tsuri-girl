class RemoveLatitudeAndLongitudeFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :latitude, :float, limit: 25
    remove_column :entries, :longitude, :float, limit: 25
  end
end
