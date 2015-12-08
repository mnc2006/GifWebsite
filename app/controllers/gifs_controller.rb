class GifsController < ApplicationController

  def index
     @gifs = Gif.order("created_at DESC")
     @gif = Gif.new
     @user = User.new
   end

def new
end

   def create
     @gifs= Gif.all
     @gifs = Gif.new(gif_params)
     @gifs.user = current_user
     if @gif.save!
       respond_to do |format|
         format.html {redirect_to root_url}
         format.js { }
       end
     else
       render "new"
     end
   end

   private

   def gif_params
     params.require(:gif).permit(:url)
   end



end
