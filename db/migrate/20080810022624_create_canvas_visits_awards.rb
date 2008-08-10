class CreateCanvasVisitsAwards < ActiveRecord::Migration
  def self.up
    create_table :canvas_visits_awards do |t|
      t.integer :visited_days
      t.integer :total_days
      t.integer :next_level

      t.timestamps
    end
  end

  def self.down
    drop_table :canvas_visits_awards
  end
end
