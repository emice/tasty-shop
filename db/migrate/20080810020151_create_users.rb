class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :facebook_id, :limit => 20, :null => false
      t.string  :session_key
      t.integer :inviting_user_id
      t.integer :invitations_award_id
      t.integer :gifts_award_id
      t.integer :canvas_visits_award_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
