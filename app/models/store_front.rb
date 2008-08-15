class StoreFront < ActiveRecord::Base
  # ownable via has_many_polymorphs
  belongs_to :store_front_design

  has_many :stores
end
