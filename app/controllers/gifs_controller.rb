class GifsController < ApplicationController

  def index
     @gifs = Gif.order("created_at DESC")
     @gif = Gif.new
   end

   def show
     @gifs = Gif.find(params[:id])
   end

   def new
     @gifs = Gif.new
   end

   def create
     @gifs = Gif.new(gif_params)
     if @gifs.save
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
     params.require(:gif).permit(:user_id, :date)
   end



end
