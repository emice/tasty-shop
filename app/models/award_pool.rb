class AwardPool < ActiveRecord::Base
  belongs_to :award_template, :polymorphic => true

  has_many_polymorphs :qualifiables, 
    :from => [:invitations_awards, :gifts_awards, :canvas_visits_awards], :through => :award_qualifications
end
