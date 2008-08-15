class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.integer :inventory_item_id
      t.integer :sending_user_id
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
