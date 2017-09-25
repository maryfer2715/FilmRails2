class FilmsController < ApplicationController
	before_action :find_film, only: [:edit, :update, :show]
	
	before_action :find_film, only: [:edit, :update, :show, :destroy]
	def index 
		@films = Film.all
	end 

	def show
end

def destroy
   @film.destroy
   redirect_to films_path
 end
    private
   def films_params
     params.require(:film).permit(:title, :year, :description, :rating)

 def new
   @film = Film.new
  end

  def edit
-    @film = Film.find(params[:id])
  end

  def update
    if @film.update films_params
      p "SI SE ACTUALIZO"
      redirect_to films_path
   else
      p "NO SE ACTALIZO"
      render :edit
    end
  end

  def show
   end
 
   private
   def films_params
     params.require(:film).permit(:title, :year, :description, :rating)
   end

  def find_film
    @film = Film.find(params[:id])
  end
 end