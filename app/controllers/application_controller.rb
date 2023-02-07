# frozen_string_literal: true

class ApplicationController < ActionController::Base
  UnAuthorized = Class.new(StandardError)
  rescue_from UnAuthorized, with: :render_un_authorized

  def render_un_authorized
    render file: 'public/401.html', status: 401
  end

  private

  def authenticate_admin!
    return if authenticate_account! && current_account.admin == true

    raise UnAuthorized, 'You need to be an admin to have access to this page!'
  end
end
