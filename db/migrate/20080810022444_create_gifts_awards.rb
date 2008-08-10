class CreateGiftsAwards < ActiveRecord::Migration
  def self.up
    create_table :gifts_awards do |t|
      t.integer :gifts_given
      t.integer :next_level

      t.timestamps
    end
  end

  def self.down
    drop_table :gifts_awards
  end
end
