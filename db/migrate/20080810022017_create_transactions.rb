class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :user_id
      t.string :transactable_type
      t.integer :transactable_id
      t.string :receivable_type
      t.integer :receivable_id
      t.integer :net_value

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
