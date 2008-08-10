class CreateAwardQualifications < ActiveRecord::Migration
  def self.up
    create_table :award_qualifications do |t|
      t.integer :award_pool_id
      t.string :qualifiable_award_type
      t.integer :qualifiable_award_id

      t.timestamps
    end
  end

  def self.down
    drop_table :award_qualifications
  end
end
