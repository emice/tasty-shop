class User < ActiveRecord::Base
  has_many_polymorphs :ownables, 
    :from => [:products, :stores, :store_fronts], :through => :ownerships

  has_many :product_designs, :foreign_key => :creating_user_id
  has_many :store_front_designs, :foreign_key => :creating_user_id

#  has_many :inventory_items, :through => :ownerships?
#  has_many :received_offers, :through => :inventory_items - write a method for this

  has_many :sent_offers, :class_name => 'Offer', :foreign_key => :sending_user_id

  has_many :cash_receipts
  
  has_many_polymorphs :receivables, 
    :from => [:ownerships, :cash_receipts], :through => :transactions
  has_many_polymorphs :transactables, 
    :from => [:sales, :gifts, :awards], :through => :transactions

  has_many :seller_sales, :class_name => 'Sale', :foreign_key => :selling_user_id
  has_many :buyer_sales, :class_name => 'Sale', :foreign_key => :buying_user_id

  has_many :sent_gifts, :class_name => 'Gift', :foreign_key => :sending_user_id
  has_many :received_gifts, :class_name => 'Gift', :foreign_key => :receiving_user_id

  has_many_polymorphs :awardables, 
    :from => [:invitations_awards, :gifts_awards, :canvas_visits_awards], 
    :through => :awards, :foreign_key => :receiving_user_id

end
