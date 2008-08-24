class CanvasVisitsAward < ActiveRecord::Base
  # awardable via has_many_polymorphs in Award
  # qualifiable via has_many_polymorphs in AwardQualification
  has_many :eligible_users, :class_name => "User", :foreign_key => :canvas_visits_award_id
end
