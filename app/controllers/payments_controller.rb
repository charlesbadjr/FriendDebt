class PaymentsController < ApplicationController
  before_action: set_debt
  before_action: set_payment


  def index
  
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = @debt.payments.new(payment_params)
    if @payment.save
      redirect_to user_debt_path(@debt.user_id, @debt)
    else
      render :new
    end
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

  def set_payment
    @payment = Payment.find(params[:id])
  end

end
