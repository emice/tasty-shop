class StoreFrontDesign < ActiveRecord::Base
  belongs_to :creating_user, :class_name => 'User', :foreign_key => :creating_user_id

  belongs_to :left_image, :class_name => 'StoreFrontImage', :foreign_key => :left_image_id
  belongs_to :top_image, :class_name => 'StoreFrontImage', :foreign_key => :top_image_id
  belongs_to :right_image, :class_name => 'StoreFrontImage', :foreign_key => :right_image_id

  has_many :store_fronts

  has_many :award_pools, :as => :award_template
end
