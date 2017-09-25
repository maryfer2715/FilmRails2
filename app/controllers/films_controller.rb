class FilmsController < ApplicationController
	def index 
		@name = "Alejadro y Fernanda "
	end 
end
 def new
   @film = Film.new
  end

  def create
    @film = Film.new films_params
   if @film.save
      p "SI SE GUARDO"
      redirect_to films_path
    else
     p "NO SE GUARDO"
      render :new
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  private
  def films_params
    params.require(:film).permit(:title, :year, :description, :rating)
   end
 end