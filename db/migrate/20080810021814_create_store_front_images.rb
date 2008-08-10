class CreateStoreFrontImages < ActiveRecord::Migration
  def self.up
    create_table :store_front_images do |t|
      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :size
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end

  def self.down
    drop_table :store_front_images
  end
end
