class ApplicationController < ActionController::Base
    after_action :allow_iframe

  private

  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end
end
rails generate controller Professionals
rails generate controller WorkingHours
