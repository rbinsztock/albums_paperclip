class AddAttachmentImageToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :image
      t.integer :album_id
    end
  end

  def self.down
    drop_attached_file :images, :image
  end
end
