class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.integer :store_inventory_id
      t.integer :offering_user_id
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
