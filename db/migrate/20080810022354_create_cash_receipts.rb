class CreateCashReceipts < ActiveRecord::Migration
  def self.up
    create_table :cash_receipts do |t|
      t.integer :user_id
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :cash_receipts
  end
end
