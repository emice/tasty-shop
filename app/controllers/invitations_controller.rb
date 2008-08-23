class InvitationsController < ApplicationController

def create
  @sent_to_ids = params[:ids]
end

def new
  if params[:from]
    @user = facebook_session.user
    @user.profile_fbml = render_to_string(:partial => 'profile',
      :locals => {:from => params[:from]})
  end 
  @from_user_id = facebook_session.user.to_s
end

end
