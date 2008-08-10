class CreateProductDesigns < ActiveRecord::Migration
  def self.up
    create_table :product_designs do |t|
      t.integer :creating_user_id
      t.string :name
      t.integer :base_value

      t.timestamps
    end
  end

  def self.down
    drop_table :product_designs
  end
end
