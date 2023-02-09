# frozen_string_literal: true

class InvitationController < Devise::ApplicationController
  before_action :configure_parameters

  def configure_parameters
    devise_parameter_sanitizer.permit(:invite, keys: [:admin])
  end
end
