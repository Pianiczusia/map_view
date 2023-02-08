# frozen_string_literal: true

class AccountsController < ApplicationController
  before_action :authenticate_admin!, only: %i[show index edit destroy]
  
  def index
    @accounts = Account.all
  end

  def show
    @accounts = Account.find(params[:id])
  end

  def edit
    @accounts = Account.find(params[:id])
  end

  def update
    @accounts = Account.find(params[:id])
    if @accounts.update(account_params)
      redirect_to accounts_path
    else
      render 'edit'
    end
  end

  def account_params
    params.require(:account).permit(:email, :password, :first_name, :last_name, :admin)

    password_exists = params.dig(:account, :password).present?
    attributes = %i[email first_name last_name admin]
    attributes << :password if password_exists
    params.require(:account).permit(*attributes)
  end

  def destroy
    Account.find(params[:id]).destroy
    if @accounts.destroy
      redirect_to accounts_path, notice: 'User deleted.'
    else
      redirect_to accounts_path, flash: { error: 'User could not be deleted.' }
    end
  end
end
