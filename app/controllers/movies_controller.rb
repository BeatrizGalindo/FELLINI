class MoviesController < ApplicationController
  def index
    platform = params["platform"]
    if platform
      @movies = Movie.where(platform: platform)
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
