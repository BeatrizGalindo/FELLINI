class UsersController < ApplicationController
  def index
    @my_friends = current_user.friends
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if params[:search]
      @users = User.where.not(id: current_user.id).where("first_name ILIKE ?", "%#{params[:search]}%")
    else
      @users = User.where.not(id: current_user.id)
    end

    @recommended_movies = @user.movie_recommendations.order(created_at: :desc).first(4)
    @suggested_movies = @user.recommended_movies.order(created_at: :desc).first(4)
  end
end
