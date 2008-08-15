class ProductDesign < ActiveRecord::Base
  belongs_to :creating_user, :class_name => 'User', :foreign_key => :creating_user_id

  has_many :products
  has_many :product_images

  has_many :award_pools, :as => :award_template
end
