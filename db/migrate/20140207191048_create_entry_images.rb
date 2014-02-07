class CreateEntryImages < ActiveRecord::Migration
  def change
    create_table :entry_images do |t|
      t.references :entry, index: true
      t.string :text

      t.timestamps
    end
  end
end
