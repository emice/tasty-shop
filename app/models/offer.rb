class Offer < ActiveRecord::Base
  belongs_to :inventory_item
  belongs_to :sending_user, :class_name => 'User', :foreign_key => :sending_user_id
end
