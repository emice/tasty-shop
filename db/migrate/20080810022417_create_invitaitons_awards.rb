class CreateInvitaitonsAwards < ActiveRecord::Migration
  def self.up
    create_table :invitaitons_awards do |t|
      t.integer :invites_sent
      t.integer :next_level

      t.timestamps
    end
  end

  def self.down
    drop_table :invitaitons_awards
  end
end
