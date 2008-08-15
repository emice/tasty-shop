class Gift < ActiveRecord::Base
  # transactable via acts_as_double_polymorphic_join in Transaction
  belongs_to :sending_user, :class_name => 'User', :foreign_key => :sending_user_id
  belongs_to :receiving_user, :class_name => 'User', :foreign_key => :receiving_user_id
end
