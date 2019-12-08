class DebtsController < ApplicationController
  before_action :set_user
  before_action :set_debt, only: [:show, :edit, :update, :destroy]
  

  def index
   @debts = current_user.debts
  end
  
  def show
   
  end

  def new
   @debt = @user.debts.new
   render partial: "form"
  end

  def edit
  
  end

  def create
    @debt = @user.debts.new(debt_params)
    if @debt.save
      redirect_to [@user, @debt]
     else
      render :new
    end
  end

  def update 
    if @debt.update(debt_params)
      redirect_to [@user, @debt]
    else
      render :edit
    end
  end

  def destroy
    @debt.destroy
    redirect_to user_debt_path
  end

  private 

  def debt_params
    params.require(:debt).permit(:total_debt, :debt_to, :description, :payment_amount, :interest_rate, :total_number_payments, :amount_remaining )
  end

  def set_user
    @user = User.find(params[:user_id]) 
  end

  def set_debt
    @debt = Debt.find(params[:id])
  end

end