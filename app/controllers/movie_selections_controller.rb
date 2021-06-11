class MovieSelectionsController < ApplicationController
  def index
    @movie_selections = current_user.movie_selections.where(watched: false)
  end

  def watched
    @movie_selections = current_user.movie_selections.where(watched: true)
  end

  def favourites
    @movie_selections = current_user.movie_selections.where(favourite: true)
  end

  def update
    @movie_selection = MovieSelection.find(params[:id])
    @movie_selection.toggle!(params[:attribute])
    redirect_to redirection_path(params[:attribute])
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

  private

  def redirection_path(attribute)
    case attribute
    when "watched" then watched_movie_selections_path
    when "favourite" then favourites_movie_selections_path
    end
  end

end

