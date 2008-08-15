class AwardQualification < ActiveRecord::Base
  belongs_to :award_pool
  belongs_to :qualifiable, :polymorphic => true
end
