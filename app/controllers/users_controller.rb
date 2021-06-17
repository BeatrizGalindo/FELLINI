class UsersController < ApplicationController
  def index
    @friends = current_user.all_friend_people
    @ids = [current_user.id] + @friends.map{|r| r.id}
    if params[:query]
      @users = User.where.not(id: @ids).where("first_name ILIKE ?", "%#{params[:query]}%")
    else
      @users = User.where.not(id: @ids)
    end
  end

  def show
    @user = User.find(params[:id])
    if params[:query]
      @users = User.where.not(id: current_user.id).where("first_name ILIKE ?", "%#{params[:query]}%")
    else
      @users = User.where.not(id: current_user.id)
    end

    @recommended_movies = @user.recommendations.order(created_at: :desc).first(4)
    @suggested_movies = @user.recommended.order(created_at: :desc).first(4)
  end
end
