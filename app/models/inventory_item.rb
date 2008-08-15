class InventoryItem < ActiveRecord::Base
  belongs_to :store
  belongs_to :ownership

  has_many :offers
end
