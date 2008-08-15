class InvitationsAward < ActiveRecord::Base
  # awardable via has_many_polymorphs in Award
  # qualifiable via has_many_polymorphs in AwardQualification
end
