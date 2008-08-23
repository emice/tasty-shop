# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => 'ed035a58592cfd3d229a932abcfd7d33'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

  ensure_application_is_installed_by_facebook_user

  before_filter :set_current_user
  attr_accessor :current_user
  helper_attr :current_user

  def set_current_user
    self.current_user = User.for(facebook_session.user.to_i, facebook_session)
  end

  

end

ActionController::RequestForgeryProtection.module_eval do

  alias :original_verify_authenticity_token :verify_authenticity_token

  def verify_authenticity_token(*args)
    if params.include?('fb_sig')
      # Pretend to call this before_filter.
      true
    else
      original_verify_authenticity_token(*args)
    end
  end

end
