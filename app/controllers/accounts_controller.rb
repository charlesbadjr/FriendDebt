class AccountsController < ApplicationController
  before_action :set_user
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  
  def index
   @accounts = current_user.accounts
  end

  def show
   
  end

  def new
   @account = @user.accounts.new
   render partial: "form"
  end

  def edit
  
  end

  def create
    @account = @user.accounts.new(account_params)
    if @account.save
      redirect_to [@user, @account]
     else
      render :new
    end
  end

  def update 
    if @account.update(account_params)
      redirect_to [@user, @account]
    else
      render :edit
    end
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end

  private 

  def account_params
    params.require(:account).permit(:first_name, :last_name, :email, :debt_owed )
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_account
    @account = @user.accounts.find(params[:id])
  end

end