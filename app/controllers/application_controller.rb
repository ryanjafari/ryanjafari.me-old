class ApplicationController < ActionController::Base
  protect_from_forgery

  def show
    response.headers['Cache-Control'] = 'public, max-age=525600'
  end

end
