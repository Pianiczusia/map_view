# frozen_string_literal: true

class AccountsController < ApplicationController
  before_action :authenticate_account!, only: [:show]
  def index; end

  def show; end

  def edit; end
end
