class RecommendationsController < ApplicationController
  def index
    @recomendations_i_made = current_user.recomendations
    @recomendations_made_to_me = current_user.recommended
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @recomendations = Recommendation.new(user: current_user, movie: @movie, recommendee: )
  end

  def destroy
  end
end
