class Product < ActiveRecord::Base
  # ownable via has_many_polymorphs
  belongs_to :product_design
end
