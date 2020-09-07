class ApplicationController < ActionController::Base
  before_action :redirect_root_domain

  private

  def redirect_root_domain
    return unless request.host === 'fullfii.com'
    redirect_to("#{request.protocol}www.fullfii.com#{request.fullpath}", status: 301)
  end

end
