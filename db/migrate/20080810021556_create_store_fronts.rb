class CreateStoreFronts < ActiveRecord::Migration
  def self.up
    create_table :store_fronts do |t|
      t.integer :store_front_id

      t.timestamps
    end
  end

  def self.down
    drop_table :store_fronts
  end
end
