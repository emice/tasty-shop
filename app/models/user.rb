class User < ActiveRecord::Base
  belongs_to :inviting_user, :class_name => "User", :foreign_key => :inviting_user_id
  has_many :invited_users, :class_name => "User", :foreign_key => :inviting_user_id

  belongs_to :canvas_visits_award_level, :class_name => "CanvasVisitsAward", 
    :foreign_key => :canvas_visits_award_id

  belongs_to :gifts_award_level, :class_name => "GiftsAward", 
    :foreign_key => :gifts_award_id

  belongs_to :invitations_award_level, :class_name => "InvitationsAward", 
    :foreign_key => :invitations_award_id

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

def store_session(session_key)
  if self.session_key != session_key
    update_attribute(:session_key, session_key)
  end
end

def self.for(facebook_id, facebook_session=nil)
  returning User.find_or_create_by_facebook_id(facebook_id) do |user|
    unless facebook_session.nil?
      user.store_session(facebook_session.session_key)
    end
  end
end

def facebook_session
  @facebook_session ||= 
    returning Facebooker::Session.create do |session|
      session.secure_with!(session_key, facebook_id, 1.hour.from_now)
    end
end

def store_inviting_user(inviting_user_id)
  if self.inviting_user.nil?
    # find_by_facebook_id will return nil if the inviting user is not in the db
    self.update_attributes!({:inviting_user => User.find_by_facebook_id(inviting_user_id)})
  end
end

def buy
end

def give
end

end
