class CreateCashTemplates < ActiveRecord::Migration
  def self.up
    create_table :cash_templates do |t|
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :cash_templates
  end
end
