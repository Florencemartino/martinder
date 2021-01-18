class UsersController < ApplicationController

  def update
    @user = User.create!(user_params)
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:photos)
  end

end