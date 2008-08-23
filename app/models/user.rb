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

def self.for(facebook_id, facebook_session=nil)
  returning User.find_or_create_by_facebook_id(facebook_id) do |user|
    unless facebook_session.nil?
      user.store_session(facebook_session.session_key)
    end
  end
end

def store_session(session_key)
  if self.session_key != session_key
    update_attribute(:session_key, session_key)
  end
end

def facebook_session
  @facebook_session ||= 
    returning Facebooker::Session.create do |session|
      session.secure_with!(session_key, facebook_id, 1.hour.from_now)
    end
end

def buy
end

def give
end

end
