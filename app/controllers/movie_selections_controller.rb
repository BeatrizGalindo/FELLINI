class MovieSelectionsController < ApplicationController
  def index
    @movie_selections = current_user.movie_selections.where(watched: false)
  end

  def watched
    @movie_selections = current_user.movie_selections.where(watched: true)
  end

  def update
    @movie_selection = MovieSelection.find(params[:id])
    @movie_selection.toggle!(:watched)
    redirect_to movie_selections_path
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie_selection = MovieSelection.new(user: current_user, movie: @movie)

    if @movie_selection.save
      redirect_to movie_selections_path
    else
      redirect_to movies_path
    end
  end
end
