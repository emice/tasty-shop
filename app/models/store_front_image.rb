class StoreFrontImage < ActiveRecord::Base
  #  has_one :left_image_store_front_design, :class_name => 'StoreFrontDesign', :foreign_key => :left_image_id
  #  has_one :top_image_store_front_design, :class_name => 'StoreFrontDesign', :foreign_key => :top_image_id
  #  has_one :right_image_store_front_design, :class_name => 'StoreFrontDesign', :foreign_key => :right_image_id
  #  above not needed atm, maybe a cleaner way to do it
  #  this model should only link to a single store front design - how to validate this w/ 3/many links?
end
