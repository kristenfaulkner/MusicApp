class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    elsif @user.password.length < 6
        flash[:notice] = "Password must be at least 6 characters"
    end
  end
  
  private  
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
