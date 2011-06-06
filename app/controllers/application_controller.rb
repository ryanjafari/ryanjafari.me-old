class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :cache_page
  
  protected
  
  def cache_page
    unless Rails.env.development?
      expires_in 1.year, :public => true
    end
  end
end
