class Api::DebtsController < ApplicationController
  
  def index
  
  end

  def new
  
  end

  def create
  
  end

  def delete
  
  end

  private 

  def debt_params
    debts.permit(debt).only{:}
  end

end
