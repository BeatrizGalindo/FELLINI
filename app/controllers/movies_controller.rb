class MoviesController < ApplicationController
  def index
    if params.has_key?("platform")
      @movies = Movie.with_platform(params["platform"])
    elsif params.has_key?("query")
      @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
