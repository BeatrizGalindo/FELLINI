class Api::V1::RecommendationsController < Api::V1::BaseController
  def watch
    @recommendation = Recommendation.find(parmas[:id])
    MovieSelection.create(user: @recommendation.recommendee, movie: @recommendation.movie, watched: false)
    @recommendation.destroy
    render json: { status: "success" }
  end

  def destroy
    @recommendation = Recommendation.find(parmas[:id])
    @recommendation.destroy
    render json: { status: "success" }
  end
end

