class FeedbacksController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :user_signed_in

  def index
   @feedbacks = Feedback.all
  end

  def show
  
  end

  def new
   @feedback = Feedback.new
  end

  def create
   @feedback = Feedback.create(feedback_params)
     if @feedback.save
      flash[:success] = "Thanks for reaching out! Have a look around while you wait!"
      redirect_to root_path
     else
      render json: {errors: Feedback.errors }, status: :unprocessable_entity
     end
  end


  private

  def feedback_params
    params.permit(:name, :email, :phone_number, :comments)
  end

  def user_signed_in
    
    if user_signed_in?
      @user = current_user.id
     else
        @user = 1
    end

  end

end
