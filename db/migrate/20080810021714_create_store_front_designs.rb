class CreateStoreFrontDesigns < ActiveRecord::Migration
  def self.up
    create_table :store_front_designs do |t|
      t.integer :creating_user_id
      t.string :name
      t.integer :base_value
      t.integer :left_image_id
      t.integer :top_image_id
      t.integer :right_image_id

      t.timestamps
    end
  end

  def self.down
    drop_table :store_front_designs
  end
end
