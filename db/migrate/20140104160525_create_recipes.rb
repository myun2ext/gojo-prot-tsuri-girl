class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :wroted_by
      t.text :howtomake

      t.timestamps
    end
  end
end
