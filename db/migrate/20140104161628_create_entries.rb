class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.text :text
      t.float :latitude, limit: 25
      t.float :longitude, limit: 25

      t.timestamps
    end
  end
end
