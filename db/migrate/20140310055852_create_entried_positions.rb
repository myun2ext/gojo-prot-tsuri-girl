class CreateEntriedPositions < ActiveRecord::Migration
  def change
    create_table :entried_positions do |t|
      t.references :entry, index: true
      t.float :latitude, limit: 25
      t.float :longitude, limit: 25
      t.string :address
      t.string :label
      t.integer :owner_id

      t.timestamps
    end
  end
end
