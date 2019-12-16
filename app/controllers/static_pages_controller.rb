class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :user_signed_in

  def about
  
  end

  def home
    
  end

  def blog
    
  end

  private

  def user_signed_in
    
    if user_signed_in?
      @user = current_user.id
     else
        @user = 1
    end

  end

end
