class UsersController < ApplicationController
  def index
    @my_papers = current_user.newspapers
  end

  def new
    @newspapers = Newspaper.includes(:subscription_plans)
  end

  def create
    @user = User.new(params[:user])
    @user.reset_session_token
    if @user.save
      session[:token] = @user.session_token
      redirect_to home_url
    else
      render :new
    end
  end

end
