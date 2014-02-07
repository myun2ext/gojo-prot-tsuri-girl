class AddAttachmentImageToEntryImages < ActiveRecord::Migration
  def self.up
    change_table :entry_images do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :entry_images, :image
  end
end
