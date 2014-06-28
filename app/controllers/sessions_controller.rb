class SessionsController < ApplicationController
  
  def new
    @user = User.new
    render 'new'
  end
  
  def create
    unless params[:user][:email] && params[:user][:password]
       flash[:notice] = "Sorry, you must enter both fields. Please try again"
       render 'new'
    end 
    @user = User.find_by_credentials(
    params[:user][:email],
    params[:user][:password]
    )
    if @user.nil?
      flash[:notice] = "Sorry, we cannot find you in our database. Please try again."
      render 'new'
    elsif login!(@user)
      redirect_to bands_url
    end
  end
  
  def destroy
    current_user.logout!
    render 'new'
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
