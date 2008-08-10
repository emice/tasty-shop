class CreateAwardPools < ActiveRecord::Migration
  def self.up
    create_table :award_pools do |t|
      t.string :awardable_template_type
      t.integer :awardable_template_id
      t.integer :quantity_available
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :award_pools
  end
end
