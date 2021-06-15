class RecommendationsController < ApplicationController
  def index
    @recomendations_i_made = current_user.recomendations
    @recomendations_made_to_me = current_user.recommended
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @recommendation = Recommendation.new(recommendation_parmams)
    @recommendation.user = current_user
    @recommendation.movie = @movie
    @recommendation.save
    flash[:notice] = "Movie recommended to #{@recommendation.recommendee.first_name}!"
    redirect_back fallback_location: request.referrer
  end

  def destroy
  end

  def recommendation_parmams
    params.require(:recommendation).permit(:recommendee_id)
  end
end
