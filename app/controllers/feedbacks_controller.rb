class FeedbacksController < ApplicationController
  skip_before_action :authenticate_user!
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
      redirect_to :index
     else
      render json: {errors: Feedback.errors }, status: :unprocessable_entity
     end
  end


  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :phone_number, :comments)
  end

end
