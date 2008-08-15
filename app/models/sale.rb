class Sale < ActiveRecord::Base
  # transactable via acts_as_double_polymorphic_join in Transaction
  belongs_to :store
  belongs_to :selling_user, :class_name => 'User', :foreign_key => :selling_user_id
  belongs_to :buying_user, :class_name => 'User', :foreign_key => :buying_user_id
end
