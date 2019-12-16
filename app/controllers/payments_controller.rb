class PaymentsController < ApplicationController
  before_action :set_debt, only [:create, :new, :edit, :destroy ]

  def index
    @payments = current_user.debts.payment
  end

  def new
    
  end

  def create

  end

  def edit

  end

  def show
     
  end

  def destroy

  end

  private

  def payment_params
    params.require(:payment).permit(:actual_payment_amount, :amount_interest, :amount_principle, :total_todate, :paid, :comment)
  end

  def set_debt
   @debt = Debt.find(params[:debt_id])
  end

end
