class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(params[:id])
    if params[:search]
      @users = User.where.not(id: current_user.id).where("first_name ILIKE ?", "%#{params[:search]}%")
    else
      @users = User.where.not(id: current_user.id)
    end

    @recommended_movies = @user.movie_recommendations
    @suggested_movies = @user.recommended_movies
  end
end
