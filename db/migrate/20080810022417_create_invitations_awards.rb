class CreateInvitationsAwards < ActiveRecord::Migration
  def self.up
    create_table :invitations_awards do |t|
      t.integer :invites_sent
      t.integer :next_level

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations_awards
  end
end
