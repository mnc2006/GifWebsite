class UserController < ApplicationController


def new
  @user = User.new(user_params)
end


private

def set_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:login, :password, :email)
end


end
