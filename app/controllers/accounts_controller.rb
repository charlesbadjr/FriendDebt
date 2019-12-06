class AccountsController < ApplicationController
  
  def index
  
  end

  def show
  
  end

  def new
  
  end

  def edit
  
  end

  private 

  def account_params
    params.require(:account).permit(:name, :balance)
  end

  def set_account
    @account = current_user.accounts.find(params[:id])
  end

end
