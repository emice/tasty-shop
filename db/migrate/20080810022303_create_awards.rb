class CreateAwards < ActiveRecord::Migration
  def self.up
    create_table :awards do |t|
      t.integer :receiving_user_id
      t.string :awardable_type
      t.integer :awardable_id
      t.integer :award_pool_id

      t.timestamps
    end
  end

  def self.down
    drop_table :awards
  end
end
