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
end
