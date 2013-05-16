class ApplicationController < ActionController::Base
  protect_from_forgery

  def show
    redirect_to 'http://ryanandcarlos.com'
    response.headers['Cache-Control'] = 'public, max-age=525600'
  end

end
