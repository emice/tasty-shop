class CreateInventoryItems < ActiveRecord::Migration
  def self.up
    create_table :inventory_items do |t|
      t.integer :store_id
      t.integer :ownership_id
      t.integer :asking_price
      t.boolean :friends_only

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_items
  end
end
