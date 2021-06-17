class FriendsController < ApplicationController
  def index
    @friends = all_friends
  end

  def create
    @friend = Friend.new(friend: User.find(params[:friend].to_i))
    @friend.user = current_user
    @friend.save
    redirect_back fallback_location: request.referrer
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_back fallback_location: request.referrer
  end

  private

  def friend_params
    params.require(:friend).permit(:movie_id, :friend_id)
  end
end
