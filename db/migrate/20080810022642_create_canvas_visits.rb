class CreateCanvasVisits < ActiveRecord::Migration
  def self.up
    create_table :canvas_visits do |t|
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :canvas_visits
  end
end
