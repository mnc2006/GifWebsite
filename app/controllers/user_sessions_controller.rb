class UserSessionsController < ApplicationController

  def new
     @user_session = UserSessions.new
   end

   def create
     @user_session = UserSessions.new(user_sessions_params)
     if @user_session.save
       flash[:success] = "Login Successful!"
       redirect_to root_path
     else
       render :new
     end
   end

   def destroy
     current_user_session.destroy
     flash[:success] = "Goodbye!"
     redirect_to root_path
   end

   private

   def user_sessions_params
     params.require(:user_sessions).permit(:email, :password, :remember_me)
   end


end
