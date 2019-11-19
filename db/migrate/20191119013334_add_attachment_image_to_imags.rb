class AddAttachmentImageToImags < ActiveRecord::Migration[5.0]
  def self.up
    change_table :imags do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :imags, :image
  end
end
