class Store < ActiveRecord::Base
  # ownable via has_many_polymorphs
  belongs_to :store_front

  has_many :inventory_items
end
