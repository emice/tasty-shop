class CreateOwnerships < ActiveRecord::Migration
  def self.up
    create_table :ownerships do |t|
      t.integer :user_id
      t.string :ownable_type
      t.integer :ownable_id
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :ownerships
  end
end
