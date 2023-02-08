# frozen_string_literal: true

class AccountsController < ApplicationController
  before_action :authenticate_admin!, only: %i[show index edit destroy update]

  def index
    render locals: { accounts: Account.all }
  end

  def show
    render locals: { account: }
  end

  def edit
    render locals: { account: }
  end

  def update
    return redirect_to accounts_path if account.update!(account_params)

    render 'edit', locals: { account: }
  end

  def account
    @account ||= Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:email, :password, :first_name, :last_name, :admin)
    password_exists = params.dig(:account, :password).present?
    attributes = %i[email first_name last_name admin]
    attributes << :password if password_exists
    params.require(:account).permit(*attributes)
  end

  def destroy
    return redirect_to accounts_path, notice: 'User deleted.' if account.destroy

    redirect_to accounts_path, flash: { error: 'User could not be deleted.' }
  end
end
