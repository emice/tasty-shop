class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.integer :store_id
      t.integer :selling_user_id
      t.integer :buying_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
