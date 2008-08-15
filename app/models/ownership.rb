class Ownership < ActiveRecord::Base
  # receivable via acts_as_double_polymorphic_join in Transaction
  belongs_to :user
  belongs_to :ownable, :polymorphic => true

  has_many :inventory_items
end
