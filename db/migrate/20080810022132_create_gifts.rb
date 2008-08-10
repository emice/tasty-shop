class CreateGifts < ActiveRecord::Migration
  def self.up
    create_table :gifts do |t|
      t.integer :giving_user_id
      t.integer :receiving_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gifts
  end
end
